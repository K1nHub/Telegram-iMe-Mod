package io.grpc;

import com.google.common.base.Preconditions;
import java.security.cert.Certificate;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import p033j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public final class InternalChannelz {
    private final ConcurrentMap<Long, InternalInstrumented<Object>> otherSockets;
    private final ConcurrentNavigableMap<Long, InternalInstrumented<Object>> rootChannels;
    private final ConcurrentMap<Long, InternalInstrumented<Object>> subchannels;
    private static final Logger log = Logger.getLogger(InternalChannelz.class.getName());
    private static final InternalChannelz INSTANCE = new InternalChannelz();

    public InternalChannelz() {
        new ConcurrentSkipListMap();
        this.rootChannels = new ConcurrentSkipListMap();
        this.subchannels = new ConcurrentHashMap();
        this.otherSockets = new ConcurrentHashMap();
        new ConcurrentHashMap();
    }

    public static InternalChannelz instance() {
        return INSTANCE;
    }

    public void addSubchannel(InternalInstrumented<Object> internalInstrumented) {
        add(this.subchannels, internalInstrumented);
    }

    public void addRootChannel(InternalInstrumented<Object> internalInstrumented) {
        add(this.rootChannels, internalInstrumented);
    }

    public void addClientSocket(InternalInstrumented<Object> internalInstrumented) {
        add(this.otherSockets, internalInstrumented);
    }

    public void removeSubchannel(InternalInstrumented<Object> internalInstrumented) {
        remove(this.subchannels, internalInstrumented);
    }

    public void removeRootChannel(InternalInstrumented<Object> internalInstrumented) {
        remove(this.rootChannels, internalInstrumented);
    }

    public void removeClientSocket(InternalInstrumented<Object> internalInstrumented) {
        remove(this.otherSockets, internalInstrumented);
    }

    private static <T extends InternalInstrumented<?>> void add(Map<Long, T> map, T t) {
        map.put(Long.valueOf(t.getLogId().getId()), t);
    }

    private static <T extends InternalInstrumented<?>> void remove(Map<Long, T> map, T t) {
        map.remove(Long.valueOf(m704id(t)));
    }

    /* loaded from: classes6.dex */
    public static final class Security {
        public Security(Tls tls) {
            Tls tls2 = (Tls) Preconditions.checkNotNull(tls);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Tls {
        public Tls(SSLSession sSLSession) {
            sSLSession.getCipherSuite();
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            if (localCertificates != null) {
                Certificate certificate = localCertificates[0];
            }
            try {
                Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                if (peerCertificates != null) {
                    Certificate certificate2 = peerCertificates[0];
                }
            } catch (SSLPeerUnverifiedException e) {
                InternalChannelz.log.log(Level.FINE, String.format("Peer cert not available for peerHost=%s", sSLSession.getPeerHost()), (Throwable) e);
            }
        }
    }

    /* renamed from: id */
    public static long m704id(InternalWithLogId internalWithLogId) {
        return internalWithLogId.getLogId().getId();
    }
}
