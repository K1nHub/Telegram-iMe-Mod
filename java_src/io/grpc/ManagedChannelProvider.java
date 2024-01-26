package io.grpc;

import io.grpc.ServiceProviders;
import io.grpc.okhttp.OkHttpChannelProvider;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4.dex */
public abstract class ManagedChannelProvider {
    static final Iterable<Class<?>> HARDCODED_CLASSES;

    protected abstract boolean isAvailable();

    protected abstract int priority();

    static {
        HardcodedClasses hardcodedClasses = new HardcodedClasses();
        HARDCODED_CLASSES = hardcodedClasses;
        ManagedChannelProvider managedChannelProvider = (ManagedChannelProvider) ServiceProviders.load(ManagedChannelProvider.class, hardcodedClasses, ManagedChannelProvider.class.getClassLoader(), new ServiceProviders.PriorityAccessor<ManagedChannelProvider>() { // from class: io.grpc.ManagedChannelProvider.1
            @Override // io.grpc.ServiceProviders.PriorityAccessor
            public boolean isAvailable(ManagedChannelProvider managedChannelProvider2) {
                return managedChannelProvider2.isAvailable();
            }

            @Override // io.grpc.ServiceProviders.PriorityAccessor
            public int getPriority(ManagedChannelProvider managedChannelProvider2) {
                return managedChannelProvider2.priority();
            }
        });
    }

    /* loaded from: classes4.dex */
    private static final class HardcodedClasses implements Iterable<Class<?>> {
        private HardcodedClasses() {
        }

        @Override // java.lang.Iterable
        public Iterator<Class<?>> iterator() {
            ArrayList arrayList = new ArrayList();
            try {
                int i = OkHttpChannelProvider.$r8$clinit;
                arrayList.add(OkHttpChannelProvider.class);
            } catch (ClassNotFoundException unused) {
            }
            try {
                arrayList.add(Class.forName("io.grpc.netty.NettyChannelProvider"));
            } catch (ClassNotFoundException unused2) {
            }
            return arrayList.iterator();
        }
    }
}
