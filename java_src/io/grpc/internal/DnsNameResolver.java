package io.grpc.internal;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.base.Throwables;
import com.google.common.base.Verify;
import com.google.common.base.VerifyException;
import io.grpc.Attributes;
import io.grpc.EquivalentAddressGroup;
import io.grpc.NameResolver;
import io.grpc.ProxiedSocketAddress;
import io.grpc.ProxyDetector;
import io.grpc.Status;
import io.grpc.SynchronizationContext;
import io.grpc.internal.SharedResourceHolder;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public final class DnsNameResolver extends NameResolver {
    private static final String JNDI_LOCALHOST_PROPERTY;
    private static final String JNDI_PROPERTY;
    private static final String JNDI_TXT_PROPERTY;
    static boolean enableJndi;
    static boolean enableJndiLocalhost;
    static boolean enableTxt;
    private static String localHostname;
    private static final ResourceResolverFactory resourceResolverFactory;
    private final String authority;
    private final long cacheTtlNanos;
    private ResolutionResults cachedResolutionResults;
    private final boolean enableSrv;
    private Executor executor;
    private final SharedResourceHolder.Resource<Executor> executorResource;
    private final String host;
    private NameResolver.Listener2 listener;
    private final int port;
    final ProxyDetector proxyDetector;
    private boolean resolving;
    private final NameResolver.ServiceConfigParser serviceConfigParser;
    private boolean shutdown;
    private final Stopwatch stopwatch;
    private final SynchronizationContext syncContext;
    private final boolean usingExecutorResource;
    private static final Logger logger = Logger.getLogger(DnsNameResolver.class.getName());
    private static final Set<String> SERVICE_CONFIG_CHOICE_KEYS = Collections.unmodifiableSet(new HashSet(Arrays.asList("clientLanguage", "percentage", "clientHostname", "serviceConfig")));
    private final Random random = new Random();
    private volatile AddressResolver addressResolver = JdkAddressResolver.INSTANCE;
    private final AtomicReference<ResourceResolver> resourceResolver = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public interface AddressResolver {
        List<InetAddress> resolveAddress(String str) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public interface ResourceResolver {
        List<EquivalentAddressGroup> resolveSrv(AddressResolver addressResolver, String str) throws Exception;

        List<String> resolveTxt(String str) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public interface ResourceResolverFactory {
        ResourceResolver newResourceResolver();

        Throwable unavailabilityCause();
    }

    static /* synthetic */ String access$1200() {
        return getLocalHostname();
    }

    static {
        String property = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi", "true");
        JNDI_PROPERTY = property;
        String property2 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost", "false");
        JNDI_LOCALHOST_PROPERTY = property2;
        String property3 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_service_config", "false");
        JNDI_TXT_PROPERTY = property3;
        enableJndi = Boolean.parseBoolean(property);
        enableJndiLocalhost = Boolean.parseBoolean(property2);
        enableTxt = Boolean.parseBoolean(property3);
        resourceResolverFactory = getResourceResolverFactory(DnsNameResolver.class.getClassLoader());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DnsNameResolver(String str, String str2, NameResolver.Args args, SharedResourceHolder.Resource<Executor> resource, Stopwatch stopwatch, boolean z, boolean z2) {
        Preconditions.checkNotNull(args, "args");
        this.executorResource = resource;
        URI create = URI.create("//" + ((String) Preconditions.checkNotNull(str2, AppMeasurementSdk.ConditionalUserProperty.NAME)));
        Preconditions.checkArgument(create.getHost() != null, "Invalid DNS name: %s", str2);
        this.authority = (String) Preconditions.checkNotNull(create.getAuthority(), "nameUri (%s) doesn't have an authority", create);
        this.host = create.getHost();
        if (create.getPort() == -1) {
            this.port = args.getDefaultPort();
        } else {
            this.port = create.getPort();
        }
        this.proxyDetector = (ProxyDetector) Preconditions.checkNotNull(args.getProxyDetector(), "proxyDetector");
        this.cacheTtlNanos = getNetworkAddressCacheTtlNanos(z);
        this.stopwatch = (Stopwatch) Preconditions.checkNotNull(stopwatch, "stopwatch");
        this.syncContext = (SynchronizationContext) Preconditions.checkNotNull(args.getSynchronizationContext(), "syncContext");
        Executor offloadExecutor = args.getOffloadExecutor();
        this.executor = offloadExecutor;
        this.usingExecutorResource = offloadExecutor == null;
        this.enableSrv = z2;
        this.serviceConfigParser = (NameResolver.ServiceConfigParser) Preconditions.checkNotNull(args.getServiceConfigParser(), "serviceConfigParser");
    }

    @Override // io.grpc.NameResolver
    public String getServiceAuthority() {
        return this.authority;
    }

    @Override // io.grpc.NameResolver
    public void start(NameResolver.Listener2 listener2) {
        Preconditions.checkState(this.listener == null, "already started");
        if (this.usingExecutorResource) {
            this.executor = (Executor) SharedResourceHolder.get(this.executorResource);
        }
        this.listener = (NameResolver.Listener2) Preconditions.checkNotNull(listener2, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        resolve();
    }

    @Override // io.grpc.NameResolver
    public void refresh() {
        Preconditions.checkState(this.listener != null, "not started");
        resolve();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public final class Resolve implements Runnable {
        private final NameResolver.Listener2 savedListener;

        Resolve(NameResolver.Listener2 listener2) {
            this.savedListener = (NameResolver.Listener2) Preconditions.checkNotNull(listener2, "savedListener");
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DnsNameResolver.logger.isLoggable(Level.FINER)) {
                Logger logger = DnsNameResolver.logger;
                logger.finer("Attempting DNS resolution of " + DnsNameResolver.this.host);
            }
            try {
                resolveInternal();
            } finally {
                DnsNameResolver.this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.DnsNameResolver.Resolve.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DnsNameResolver.this.resolving = false;
                    }
                });
            }
        }

        void resolveInternal() {
            try {
                ProxiedSocketAddress proxyFor = DnsNameResolver.this.proxyDetector.proxyFor(InetSocketAddress.createUnresolved(DnsNameResolver.this.host, DnsNameResolver.this.port));
                if (proxyFor != null) {
                    if (DnsNameResolver.logger.isLoggable(Level.FINER)) {
                        Logger logger = DnsNameResolver.logger;
                        logger.finer("Using proxy address " + proxyFor);
                    }
                    this.savedListener.onResult(NameResolver.ResolutionResult.newBuilder().setAddresses(Collections.singletonList(new EquivalentAddressGroup(proxyFor))).setAttributes(Attributes.EMPTY).build());
                    return;
                }
                try {
                    final ResolutionResults resolveAll = DnsNameResolver.resolveAll(DnsNameResolver.this.addressResolver, DnsNameResolver.shouldUseJndi(DnsNameResolver.enableJndi, DnsNameResolver.enableJndiLocalhost, DnsNameResolver.this.host) ? DnsNameResolver.this.getResourceResolver() : null, DnsNameResolver.this.enableSrv, DnsNameResolver.enableTxt, DnsNameResolver.this.host);
                    DnsNameResolver.this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.DnsNameResolver.Resolve.2
                        @Override // java.lang.Runnable
                        public void run() {
                            DnsNameResolver.this.cachedResolutionResults = resolveAll;
                            if (DnsNameResolver.this.cacheTtlNanos > 0) {
                                DnsNameResolver.this.stopwatch.reset().start();
                            }
                        }
                    });
                    if (DnsNameResolver.logger.isLoggable(Level.FINER)) {
                        Logger logger2 = DnsNameResolver.logger;
                        logger2.finer("Found DNS results " + resolveAll + " for " + DnsNameResolver.this.host);
                    }
                    ArrayList arrayList = new ArrayList();
                    for (InetAddress inetAddress : resolveAll.addresses) {
                        arrayList.add(new EquivalentAddressGroup(new InetSocketAddress(inetAddress, DnsNameResolver.this.port)));
                    }
                    NameResolver.ResolutionResult.Builder addresses = NameResolver.ResolutionResult.newBuilder().setAddresses(arrayList);
                    Attributes.Builder newBuilder = Attributes.newBuilder();
                    if (!resolveAll.balancerAddresses.isEmpty()) {
                        newBuilder.set(GrpcAttributes.ATTR_LB_ADDRS, resolveAll.balancerAddresses);
                    }
                    if (!resolveAll.txtRecords.isEmpty()) {
                        NameResolver.ConfigOrError parseServiceConfig = DnsNameResolver.parseServiceConfig(resolveAll.txtRecords, DnsNameResolver.this.random, DnsNameResolver.access$1200());
                        if (parseServiceConfig != null) {
                            if (parseServiceConfig.getError() != null) {
                                this.savedListener.onError(parseServiceConfig.getError());
                                return;
                            }
                            Map<String, ?> map = (Map) parseServiceConfig.getConfig();
                            addresses.setServiceConfig(DnsNameResolver.this.serviceConfigParser.parseServiceConfig(map));
                            newBuilder.set(GrpcAttributes.NAME_RESOLVER_SERVICE_CONFIG, map);
                        }
                    } else {
                        DnsNameResolver.logger.log(Level.FINE, "No TXT records found for {0}", new Object[]{DnsNameResolver.this.host});
                    }
                    this.savedListener.onResult(addresses.setAttributes(newBuilder.build()).build());
                } catch (Exception e) {
                    NameResolver.Listener2 listener2 = this.savedListener;
                    Status status = Status.UNAVAILABLE;
                    listener2.onError(status.withDescription("Unable to resolve host " + DnsNameResolver.this.host).withCause(e));
                }
            } catch (IOException e2) {
                NameResolver.Listener2 listener22 = this.savedListener;
                Status status2 = Status.UNAVAILABLE;
                listener22.onError(status2.withDescription("Unable to resolve host " + DnsNameResolver.this.host).withCause(e2));
            }
        }
    }

    static NameResolver.ConfigOrError parseServiceConfig(List<String> list, Random random, String str) {
        try {
            Map<String, ?> map = null;
            for (Map<String, ?> map2 : parseTxtResults(list)) {
                try {
                    map = maybeChooseServiceConfig(map2, random, str);
                    if (map != null) {
                        break;
                    }
                } catch (RuntimeException e) {
                    return NameResolver.ConfigOrError.fromError(Status.UNKNOWN.withDescription("failed to pick service config choice").withCause(e));
                }
            }
            if (map == null) {
                return null;
            }
            return NameResolver.ConfigOrError.fromConfig(map);
        } catch (IOException | RuntimeException e2) {
            return NameResolver.ConfigOrError.fromError(Status.UNKNOWN.withDescription("failed to parse TXT records").withCause(e2));
        }
    }

    private void resolve() {
        if (this.resolving || this.shutdown || !cacheRefreshRequired()) {
            return;
        }
        this.resolving = true;
        this.executor.execute(new Resolve(this.listener));
    }

    private boolean cacheRefreshRequired() {
        if (this.cachedResolutionResults != null) {
            long j = this.cacheTtlNanos;
            if (j != 0 && (j <= 0 || this.stopwatch.elapsed(TimeUnit.NANOSECONDS) <= this.cacheTtlNanos)) {
                return false;
            }
        }
        return true;
    }

    @Override // io.grpc.NameResolver
    public void shutdown() {
        if (this.shutdown) {
            return;
        }
        this.shutdown = true;
        Executor executor = this.executor;
        if (executor == null || !this.usingExecutorResource) {
            return;
        }
        this.executor = (Executor) SharedResourceHolder.release(this.executorResource, executor);
    }

    static ResolutionResults resolveAll(AddressResolver addressResolver, ResourceResolver resourceResolver, boolean z, boolean z2, String str) {
        Exception exc;
        List<InetAddress> emptyList = Collections.emptyList();
        List<EquivalentAddressGroup> emptyList2 = Collections.emptyList();
        List<String> emptyList3 = Collections.emptyList();
        Exception exc2 = null;
        try {
            emptyList = addressResolver.resolveAddress(str);
            e = null;
        } catch (Exception e) {
            e = e;
        }
        if (resourceResolver != null) {
            if (z) {
                try {
                    emptyList2 = resourceResolver.resolveSrv(addressResolver, "_grpclb._tcp." + str);
                } catch (Exception e2) {
                    e = e2;
                }
            }
            e = null;
            if (z2) {
                boolean z3 = false;
                boolean z4 = (z && e == null) ? false : true;
                if (e != null && z4) {
                    z3 = true;
                }
                if (!z3) {
                    try {
                        emptyList3 = resourceResolver.resolveTxt("_grpc_config." + str);
                    } catch (Exception e3) {
                        exc2 = e3;
                    }
                }
            }
            Exception exc3 = exc2;
            exc2 = e;
            exc = exc3;
        } else {
            exc = null;
        }
        if (e != null) {
            if (exc2 == null) {
                try {
                    if (!emptyList2.isEmpty()) {
                    }
                } catch (Throwable th) {
                    Logger logger2 = logger;
                    Level level = Level.FINE;
                    logger2.log(level, "Address resolution failure", (Throwable) e);
                    if (exc2 != null) {
                        logger2.log(level, "Balancer resolution failure", (Throwable) exc2);
                    }
                    if (exc != null) {
                        logger2.log(level, "ServiceConfig resolution failure", (Throwable) exc);
                    }
                    throw th;
                }
            }
            Throwables.throwIfUnchecked(e);
            throw new RuntimeException(e);
        }
        if (e != null) {
            logger.log(Level.FINE, "Address resolution failure", (Throwable) e);
        }
        if (exc2 != null) {
            logger.log(Level.FINE, "Balancer resolution failure", (Throwable) exc2);
        }
        if (exc != null) {
            logger.log(Level.FINE, "ServiceConfig resolution failure", (Throwable) exc);
        }
        return new ResolutionResults(emptyList, emptyList3, emptyList2);
    }

    static List<Map<String, ?>> parseTxtResults(List<String> list) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.startsWith("grpc_config=")) {
                logger.log(Level.FINE, "Ignoring non service config {0}", new Object[]{str});
            } else {
                Object parse = JsonParser.parse(str.substring(12));
                if (!(parse instanceof List)) {
                    throw new ClassCastException("wrong type " + parse);
                }
                arrayList.addAll(JsonUtil.checkObjectList((List) parse));
            }
        }
        return arrayList;
    }

    private static final Double getPercentageFromChoice(Map<String, ?> map) {
        return JsonUtil.getNumber(map, "percentage");
    }

    private static final List<String> getClientLanguagesFromChoice(Map<String, ?> map) {
        return JsonUtil.getListOfStrings(map, "clientLanguage");
    }

    private static final List<String> getHostnamesFromChoice(Map<String, ?> map) {
        return JsonUtil.getListOfStrings(map, "clientHostname");
    }

    private static long getNetworkAddressCacheTtlNanos(boolean z) {
        if (z) {
            return 0L;
        }
        String property = System.getProperty("networkaddress.cache.ttl");
        long j = 30;
        if (property != null) {
            try {
                j = Long.parseLong(property);
            } catch (NumberFormatException unused) {
                logger.log(Level.WARNING, "Property({0}) valid is not valid number format({1}), fall back to default({2})", new Object[]{"networkaddress.cache.ttl", property, 30L});
            }
        }
        return j > 0 ? TimeUnit.SECONDS.toNanos(j) : j;
    }

    static Map<String, ?> maybeChooseServiceConfig(Map<String, ?> map, Random random, String str) {
        boolean z;
        boolean z2;
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            Verify.verify(SERVICE_CONFIG_CHOICE_KEYS.contains(entry.getKey()), "Bad key: %s", entry);
        }
        List<String> clientLanguagesFromChoice = getClientLanguagesFromChoice(map);
        if (clientLanguagesFromChoice != null && !clientLanguagesFromChoice.isEmpty()) {
            Iterator<String> it = clientLanguagesFromChoice.iterator();
            while (true) {
                if (it.hasNext()) {
                    if ("java".equalsIgnoreCase(it.next())) {
                        z2 = true;
                        break;
                    }
                } else {
                    z2 = false;
                    break;
                }
            }
            if (!z2) {
                return null;
            }
        }
        Double percentageFromChoice = getPercentageFromChoice(map);
        if (percentageFromChoice != null) {
            int intValue = percentageFromChoice.intValue();
            Verify.verify(intValue >= 0 && intValue <= 100, "Bad percentage: %s", percentageFromChoice);
            if (random.nextInt(100) >= intValue) {
                return null;
            }
        }
        List<String> hostnamesFromChoice = getHostnamesFromChoice(map);
        if (hostnamesFromChoice != null && !hostnamesFromChoice.isEmpty()) {
            Iterator<String> it2 = hostnamesFromChoice.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().equals(str)) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                return null;
            }
        }
        Map<String, ?> object = JsonUtil.getObject(map, "serviceConfig");
        if (object != null) {
            return object;
        }
        throw new VerifyException(String.format("key '%s' missing in '%s'", map, "serviceConfig"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static final class ResolutionResults {
        final List<? extends InetAddress> addresses;
        final List<EquivalentAddressGroup> balancerAddresses;
        final List<String> txtRecords;

        ResolutionResults(List<? extends InetAddress> list, List<String> list2, List<EquivalentAddressGroup> list3) {
            this.addresses = Collections.unmodifiableList((List) Preconditions.checkNotNull(list, "addresses"));
            this.txtRecords = Collections.unmodifiableList((List) Preconditions.checkNotNull(list2, "txtRecords"));
            this.balancerAddresses = Collections.unmodifiableList((List) Preconditions.checkNotNull(list3, "balancerAddresses"));
        }

        public String toString() {
            return MoreObjects.toStringHelper(this).add("addresses", this.addresses).add("txtRecords", this.txtRecords).add("balancerAddresses", this.balancerAddresses).toString();
        }
    }

    /* loaded from: classes6.dex */
    private enum JdkAddressResolver implements AddressResolver {
        INSTANCE;

        @Override // io.grpc.internal.DnsNameResolver.AddressResolver
        public List<InetAddress> resolveAddress(String str) throws UnknownHostException {
            return Collections.unmodifiableList(Arrays.asList(InetAddress.getAllByName(str)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ResourceResolver getResourceResolver() {
        ResourceResolverFactory resourceResolverFactory2;
        ResourceResolver resourceResolver = this.resourceResolver.get();
        return (resourceResolver != null || (resourceResolverFactory2 = resourceResolverFactory) == null) ? resourceResolver : resourceResolverFactory2.newResourceResolver();
    }

    static ResourceResolverFactory getResourceResolverFactory(ClassLoader classLoader) {
        try {
            try {
                try {
                    ResourceResolverFactory resourceResolverFactory2 = (ResourceResolverFactory) Class.forName("io.grpc.internal.JndiResourceResolverFactory", true, classLoader).asSubclass(ResourceResolverFactory.class).getConstructor(new Class[0]).newInstance(new Object[0]);
                    if (resourceResolverFactory2.unavailabilityCause() != null) {
                        logger.log(Level.FINE, "JndiResourceResolverFactory not available, skipping.", resourceResolverFactory2.unavailabilityCause());
                        return null;
                    }
                    return resourceResolverFactory2;
                } catch (Exception e) {
                    logger.log(Level.FINE, "Can't construct JndiResourceResolverFactory, skipping.", (Throwable) e);
                    return null;
                }
            } catch (Exception e2) {
                logger.log(Level.FINE, "Can't find JndiResourceResolverFactory ctor, skipping.", (Throwable) e2);
                return null;
            }
        } catch (ClassCastException e3) {
            logger.log(Level.FINE, "Unable to cast JndiResourceResolverFactory, skipping.", (Throwable) e3);
            return null;
        } catch (ClassNotFoundException e4) {
            logger.log(Level.FINE, "Unable to find JndiResourceResolverFactory, skipping.", (Throwable) e4);
            return null;
        }
    }

    private static String getLocalHostname() {
        if (localHostname == null) {
            try {
                localHostname = InetAddress.getLocalHost().getHostName();
            } catch (UnknownHostException e) {
                throw new RuntimeException(e);
            }
        }
        return localHostname;
    }

    static boolean shouldUseJndi(boolean z, boolean z2, String str) {
        if (z) {
            if ("localhost".equalsIgnoreCase(str)) {
                return z2;
            }
            if (str.contains(":")) {
                return false;
            }
            boolean z3 = true;
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (charAt != '.') {
                    z3 &= charAt >= '0' && charAt <= '9';
                }
            }
            return true ^ z3;
        }
        return false;
    }
}
