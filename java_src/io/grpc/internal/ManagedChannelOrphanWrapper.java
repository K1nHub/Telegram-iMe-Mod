package io.grpc.internal;

import io.grpc.ManagedChannel;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import p034j$.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class ManagedChannelOrphanWrapper extends ForwardingManagedChannel {
    private final ManagedChannelReference phantom;
    private static final ReferenceQueue<ManagedChannelOrphanWrapper> refqueue = new ReferenceQueue<>();
    private static final ConcurrentMap<ManagedChannelReference, ManagedChannelReference> refs = new ConcurrentHashMap();
    private static final Logger logger = Logger.getLogger(ManagedChannelOrphanWrapper.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    public ManagedChannelOrphanWrapper(ManagedChannel managedChannel) {
        this(managedChannel, refqueue, refs);
    }

    ManagedChannelOrphanWrapper(ManagedChannel managedChannel, ReferenceQueue<ManagedChannelOrphanWrapper> referenceQueue, ConcurrentMap<ManagedChannelReference, ManagedChannelReference> concurrentMap) {
        super(managedChannel);
        this.phantom = new ManagedChannelReference(this, managedChannel, referenceQueue, concurrentMap);
    }

    @Override // io.grpc.internal.ForwardingManagedChannel, io.grpc.ManagedChannel
    public ManagedChannel shutdownNow() {
        this.phantom.shutdown = true;
        this.phantom.clear();
        return super.shutdownNow();
    }

    /* loaded from: classes4.dex */
    static final class ManagedChannelReference extends WeakReference<ManagedChannelOrphanWrapper> {
        private static final boolean ENABLE_ALLOCATION_TRACKING = Boolean.parseBoolean(System.getProperty("io.grpc.ManagedChannel.enableAllocationTracking", "true"));
        private static final RuntimeException missingCallSite = missingCallSite();
        private final Reference<RuntimeException> allocationSite;
        private final String channelStr;
        private final ReferenceQueue<ManagedChannelOrphanWrapper> refqueue;
        private final ConcurrentMap<ManagedChannelReference, ManagedChannelReference> refs;
        private volatile boolean shutdown;

        ManagedChannelReference(ManagedChannelOrphanWrapper managedChannelOrphanWrapper, ManagedChannel managedChannel, ReferenceQueue<ManagedChannelOrphanWrapper> referenceQueue, ConcurrentMap<ManagedChannelReference, ManagedChannelReference> concurrentMap) {
            super(managedChannelOrphanWrapper, referenceQueue);
            RuntimeException runtimeException;
            if (ENABLE_ALLOCATION_TRACKING) {
                runtimeException = new RuntimeException("ManagedChannel allocation site");
            } else {
                runtimeException = missingCallSite;
            }
            this.allocationSite = new SoftReference(runtimeException);
            this.channelStr = managedChannel.toString();
            this.refqueue = referenceQueue;
            this.refs = concurrentMap;
            concurrentMap.put(this, this);
            cleanQueue(referenceQueue);
        }

        @Override // java.lang.ref.Reference
        public void clear() {
            clearInternal();
            cleanQueue(this.refqueue);
        }

        private void clearInternal() {
            super.clear();
            this.refs.remove(this);
            this.allocationSite.clear();
        }

        private static RuntimeException missingCallSite() {
            RuntimeException runtimeException = new RuntimeException("ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it");
            runtimeException.setStackTrace(new StackTraceElement[0]);
            return runtimeException;
        }

        static int cleanQueue(ReferenceQueue<ManagedChannelOrphanWrapper> referenceQueue) {
            int i = 0;
            while (true) {
                ManagedChannelReference managedChannelReference = (ManagedChannelReference) referenceQueue.poll();
                if (managedChannelReference == null) {
                    return i;
                }
                RuntimeException runtimeException = managedChannelReference.allocationSite.get();
                managedChannelReference.clearInternal();
                if (!managedChannelReference.shutdown) {
                    i++;
                    Level level = Level.SEVERE;
                    if (ManagedChannelOrphanWrapper.logger.isLoggable(level)) {
                        LogRecord logRecord = new LogRecord(level, "*~*~*~ Channel {0} was not shutdown properly!!! ~*~*~*" + System.getProperty("line.separator") + "    Make sure to call shutdown()/shutdownNow() and wait until awaitTermination() returns true.");
                        logRecord.setLoggerName(ManagedChannelOrphanWrapper.logger.getName());
                        logRecord.setParameters(new Object[]{managedChannelReference.channelStr});
                        logRecord.setThrown(runtimeException);
                        ManagedChannelOrphanWrapper.logger.log(logRecord);
                    }
                }
            }
        }
    }
}
