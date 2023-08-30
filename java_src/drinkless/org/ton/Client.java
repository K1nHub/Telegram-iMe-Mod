package drinkless.org.ton;

import drinkless.org.ton.TonApi;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p033j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public final class Client implements Runnable {
    private static final int MAX_EVENTS = 1000;
    private final AtomicLong currentQueryId;
    private volatile ExceptionHandler defaultExceptionHandler;
    private final long[] eventIds;
    private final TonApi.Object[] events;
    private final ConcurrentHashMap<Long, Handler> handlers;
    private volatile boolean isClientDestroyed;
    private final long nativeClientId;
    private final Lock readLock;
    private final ReadWriteLock readWriteLock;
    private volatile boolean stopFlag;
    private final Lock writeLock;

    /* loaded from: classes4.dex */
    public interface ExceptionHandler {
        void onException(Throwable e);
    }

    /* loaded from: classes4.dex */
    public interface ResultHandler {
        void onResult(TonApi.Object object);
    }

    private static native long createNativeClient();

    private static native void destroyNativeClient(long nativeClientId);

    private static native TonApi.Object nativeClientExecute(TonApi.Function function);

    private static native int nativeClientReceive(long nativeClientId, long[] eventIds, TonApi.Object[] events, double timeout);

    private static native void nativeClientSend(long nativeClientId, long eventId, TonApi.Function function);

    static {
        System.loadLibrary("native-lib");
    }

    public void send(TonApi.Function query, ResultHandler resultHandler, ExceptionHandler exceptionHandler) {
        Objects.requireNonNull(query, "query is null");
        this.readLock.lock();
        try {
            if (this.isClientDestroyed) {
                if (resultHandler != null) {
                    handleResult(new TonApi.Error(500, "Client is closed"), resultHandler, exceptionHandler);
                }
                return;
            }
            long incrementAndGet = this.currentQueryId.incrementAndGet();
            this.handlers.put(Long.valueOf(incrementAndGet), new Handler(resultHandler, exceptionHandler));
            nativeClientSend(this.nativeClientId, incrementAndGet, query);
        } finally {
            this.readLock.unlock();
        }
    }

    public void send(TonApi.Function query, ResultHandler resultHandler) {
        send(query, resultHandler, null);
    }

    public static TonApi.Object execute(TonApi.Function query) {
        Objects.requireNonNull(query, "query is null");
        return nativeClientExecute(query);
    }

    public void setUpdatesHandler(ResultHandler updatesHandler, ExceptionHandler exceptionHandler) {
        this.handlers.put(0L, new Handler(updatesHandler, exceptionHandler));
    }

    public void setUpdatesHandler(ResultHandler updatesHandler) {
        setUpdatesHandler(updatesHandler, null);
    }

    public void setDefaultExceptionHandler(ExceptionHandler defaultExceptionHandler) {
        this.defaultExceptionHandler = defaultExceptionHandler;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (!this.stopFlag) {
            receiveQueries(300.0d);
        }
    }

    public static Client create(ResultHandler updatesHandler, ExceptionHandler updatesExceptionHandler, ExceptionHandler defaultExceptionHandler) {
        Client client = new Client(updatesHandler, updatesExceptionHandler, defaultExceptionHandler);
        new Thread(client, "tonlib thread").start();
        return client;
    }

    public void close() {
        this.writeLock.lock();
        try {
            if (this.isClientDestroyed) {
                return;
            }
            this.isClientDestroyed = true;
            while (!this.stopFlag) {
                Thread.yield();
            }
            while (this.handlers.size() != 1) {
                receiveQueries(300.0d);
            }
            destroyNativeClient(this.nativeClientId);
        } finally {
            this.writeLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class Handler {
        final ExceptionHandler exceptionHandler;
        final ResultHandler resultHandler;

        Handler(ResultHandler resultHandler, ExceptionHandler exceptionHandler) {
            this.resultHandler = resultHandler;
            this.exceptionHandler = exceptionHandler;
        }
    }

    private Client(ResultHandler updatesHandler, ExceptionHandler updateExceptionHandler, ExceptionHandler defaultExceptionHandler) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.readWriteLock = reentrantReadWriteLock;
        this.readLock = reentrantReadWriteLock.readLock();
        this.writeLock = reentrantReadWriteLock.writeLock();
        this.stopFlag = false;
        this.isClientDestroyed = false;
        ConcurrentHashMap<Long, Handler> concurrentHashMap = new ConcurrentHashMap<>();
        this.handlers = concurrentHashMap;
        this.currentQueryId = new AtomicLong();
        this.defaultExceptionHandler = null;
        this.eventIds = new long[1000];
        this.events = new TonApi.Object[1000];
        this.nativeClientId = createNativeClient();
        concurrentHashMap.put(0L, new Handler(updatesHandler, updateExceptionHandler));
        this.defaultExceptionHandler = defaultExceptionHandler;
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    private void processResult(long id, TonApi.Object object) {
        Handler remove;
        if (id == 0) {
            remove = this.handlers.get(Long.valueOf(id));
        } else {
            remove = this.handlers.remove(Long.valueOf(id));
        }
        if (remove == null) {
            return;
        }
        handleResult(object, remove.resultHandler, remove.exceptionHandler);
    }

    private void handleResult(TonApi.Object object, ResultHandler resultHandler, ExceptionHandler exceptionHandler) {
        if (resultHandler == null) {
            return;
        }
        try {
            resultHandler.onResult(object);
        } catch (Throwable th) {
            if (exceptionHandler == null) {
                exceptionHandler = this.defaultExceptionHandler;
            }
            if (exceptionHandler != null) {
                try {
                    exceptionHandler.onException(th);
                } catch (Throwable unused) {
                }
            }
        }
    }

    private void receiveQueries(double timeout) {
        int nativeClientReceive = nativeClientReceive(this.nativeClientId, this.eventIds, this.events, timeout);
        for (int i = 0; i < nativeClientReceive; i++) {
            processResult(this.eventIds[i], this.events[i]);
            this.events[i] = null;
        }
    }
}
