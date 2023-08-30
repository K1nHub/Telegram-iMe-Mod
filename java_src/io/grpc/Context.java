package io.grpc;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4.dex */
public class Context {
    private static final PersistentHashArrayMappedTrie<Object, Object> EMPTY_ENTRIES;
    public static final Context ROOT;
    static final Logger log = Logger.getLogger(Context.class.getName());
    final CancellableContext cancellableAncestor;
    final int generation;
    private ArrayList<ExecutableListener> listeners;
    private CancellationListener parentListener = new ParentListener(this, null);

    /* renamed from: io.grpc.Context$1 */
    /* loaded from: classes4.dex */
    class RunnableC27271 implements Runnable {
    }

    /* loaded from: classes4.dex */
    public interface CancellationListener {
        void cancelled(Context context);
    }

    static {
        PersistentHashArrayMappedTrie<Object, Object> persistentHashArrayMappedTrie = new PersistentHashArrayMappedTrie<>();
        EMPTY_ENTRIES = persistentHashArrayMappedTrie;
        ROOT = new Context(null, persistentHashArrayMappedTrie);
    }

    static AbstractC2728Storage storage() {
        return LazyStorage.storage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class LazyStorage {
        static final AbstractC2728Storage storage;

        static {
            AtomicReference atomicReference = new AtomicReference();
            storage = createStorage(atomicReference);
            Throwable th = (Throwable) atomicReference.get();
            if (th != null) {
                Context.log.log(Level.FINE, "Storage override doesn't exist. Using default", th);
            }
        }

        private static AbstractC2728Storage createStorage(AtomicReference<? super ClassNotFoundException> atomicReference) {
            try {
                return (AbstractC2728Storage) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(AbstractC2728Storage.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                atomicReference.set(e);
                return new ThreadLocalContextStorage();
            } catch (Exception e2) {
                throw new RuntimeException("Storage override failed to initialize", e2);
            }
        }
    }

    public static Context current() {
        Context current = storage().current();
        return current == null ? ROOT : current;
    }

    private Context(Context context, PersistentHashArrayMappedTrie<Object, Object> persistentHashArrayMappedTrie) {
        this.cancellableAncestor = cancellableAncestor(context);
        int i = context == null ? 0 : context.generation + 1;
        this.generation = i;
        validateGeneration(i);
    }

    boolean canBeCancelled() {
        return this.cancellableAncestor != null;
    }

    public Context attach() {
        Context doAttach = storage().doAttach(this);
        return doAttach == null ? ROOT : doAttach;
    }

    public void detach(Context context) {
        checkNotNull(context, "toAttach");
        storage().detach(this, context);
    }

    public boolean isCancelled() {
        CancellableContext cancellableContext = this.cancellableAncestor;
        if (cancellableContext == null) {
            return false;
        }
        return cancellableContext.isCancelled();
    }

    public Throwable cancellationCause() {
        CancellableContext cancellableContext = this.cancellableAncestor;
        if (cancellableContext == null) {
            return null;
        }
        return cancellableContext.cancellationCause();
    }

    public Deadline getDeadline() {
        CancellableContext cancellableContext = this.cancellableAncestor;
        if (cancellableContext == null) {
            return null;
        }
        return cancellableContext.getDeadline();
    }

    public void addListener(CancellationListener cancellationListener, Executor executor) {
        checkNotNull(cancellationListener, "cancellationListener");
        checkNotNull(executor, "executor");
        if (canBeCancelled()) {
            ExecutableListener executableListener = new ExecutableListener(executor, cancellationListener);
            synchronized (this) {
                if (isCancelled()) {
                    executableListener.deliver();
                } else {
                    ArrayList<ExecutableListener> arrayList = this.listeners;
                    if (arrayList == null) {
                        ArrayList<ExecutableListener> arrayList2 = new ArrayList<>();
                        this.listeners = arrayList2;
                        arrayList2.add(executableListener);
                        CancellableContext cancellableContext = this.cancellableAncestor;
                        if (cancellableContext != null) {
                            cancellableContext.addListener(this.parentListener, DirectExecutor.INSTANCE);
                        }
                    } else {
                        arrayList.add(executableListener);
                    }
                }
            }
        }
    }

    public void removeListener(CancellationListener cancellationListener) {
        if (canBeCancelled()) {
            synchronized (this) {
                ArrayList<ExecutableListener> arrayList = this.listeners;
                if (arrayList != null) {
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        } else if (this.listeners.get(size).listener == cancellationListener) {
                            this.listeners.remove(size);
                            break;
                        } else {
                            size--;
                        }
                    }
                    if (this.listeners.isEmpty()) {
                        CancellableContext cancellableContext = this.cancellableAncestor;
                        if (cancellableContext != null) {
                            cancellableContext.removeListener(this.parentListener);
                        }
                        this.listeners = null;
                    }
                }
            }
        }
    }

    void notifyAndClearListeners() {
        if (canBeCancelled()) {
            synchronized (this) {
                ArrayList<ExecutableListener> arrayList = this.listeners;
                if (arrayList == null) {
                    return;
                }
                this.listeners = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    if (!(arrayList.get(i).listener instanceof ParentListener)) {
                        arrayList.get(i).deliver();
                    }
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (arrayList.get(i2).listener instanceof ParentListener) {
                        arrayList.get(i2).deliver();
                    }
                }
                CancellableContext cancellableContext = this.cancellableAncestor;
                if (cancellableContext != null) {
                    cancellableContext.removeListener(this.parentListener);
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class CancellableContext extends Context implements Closeable {
        private Throwable cancellationCause;
        private boolean cancelled;
        private final Deadline deadline;
        private ScheduledFuture<?> pendingDeadline;
        private final Context uncancellableSurrogate;

        @Override // io.grpc.Context
        boolean canBeCancelled() {
            return true;
        }

        @Override // io.grpc.Context
        public Context attach() {
            return this.uncancellableSurrogate.attach();
        }

        @Override // io.grpc.Context
        public void detach(Context context) {
            this.uncancellableSurrogate.detach(context);
        }

        public boolean cancel(Throwable th) {
            boolean z;
            synchronized (this) {
                z = true;
                if (this.cancelled) {
                    z = false;
                } else {
                    this.cancelled = true;
                    ScheduledFuture<?> scheduledFuture = this.pendingDeadline;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                        this.pendingDeadline = null;
                    }
                    this.cancellationCause = th;
                }
            }
            if (z) {
                notifyAndClearListeners();
            }
            return z;
        }

        @Override // io.grpc.Context
        public boolean isCancelled() {
            synchronized (this) {
                if (this.cancelled) {
                    return true;
                }
                if (super.isCancelled()) {
                    cancel(super.cancellationCause());
                    return true;
                }
                return false;
            }
        }

        @Override // io.grpc.Context
        public Throwable cancellationCause() {
            if (isCancelled()) {
                return this.cancellationCause;
            }
            return null;
        }

        @Override // io.grpc.Context
        public Deadline getDeadline() {
            return this.deadline;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            cancel(null);
        }
    }

    /* renamed from: io.grpc.Context$Storage */
    /* loaded from: classes4.dex */
    public static abstract class AbstractC2728Storage {
        public abstract Context current();

        public abstract void detach(Context context, Context context2);

        @Deprecated
        public void attach(Context context) {
            throw new UnsupportedOperationException("Deprecated. Do not call.");
        }

        public Context doAttach(Context context) {
            Context current = current();
            attach(context);
            return current;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class ExecutableListener implements Runnable {
        private final Executor executor;
        final CancellationListener listener;

        ExecutableListener(Executor executor, CancellationListener cancellationListener) {
            this.executor = executor;
            this.listener = cancellationListener;
        }

        void deliver() {
            try {
                this.executor.execute(this);
            } catch (Throwable th) {
                Context.log.log(Level.INFO, "Exception notifying context listener", th);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.listener.cancelled(Context.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class ParentListener implements CancellationListener {
        private ParentListener() {
        }

        /* synthetic */ ParentListener(Context context, RunnableC27271 runnableC27271) {
            this();
        }

        @Override // io.grpc.Context.CancellationListener
        public void cancelled(Context context) {
            Context context2 = Context.this;
            if (context2 instanceof CancellableContext) {
                ((CancellableContext) context2).cancel(context.cancellationCause());
            } else {
                context2.notifyAndClearListeners();
            }
        }
    }

    static <T> T checkNotNull(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum DirectExecutor implements Executor {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Context.DirectExecutor";
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    static CancellableContext cancellableAncestor(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof CancellableContext) {
            return (CancellableContext) context;
        }
        return context.cancellableAncestor;
    }

    private static void validateGeneration(int i) {
        if (i == 1000) {
            log.log(Level.SEVERE, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000", (Throwable) new Exception());
        }
    }
}
