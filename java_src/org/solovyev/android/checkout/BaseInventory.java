package org.solovyev.android.checkout;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.solovyev.android.checkout.Inventory;
/* loaded from: classes4.dex */
public abstract class BaseInventory implements Inventory {
    protected final Checkout mCheckout;
    protected final Object mLock;
    private final List<Task> mTasks = new ArrayList();
    private final AtomicInteger mTaskIdGenerator = new AtomicInteger();

    protected abstract Runnable createWorker(Task task);

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseInventory(Checkout checkout) {
        this.mCheckout = checkout;
        this.mLock = checkout.mLock;
    }

    @Override // org.solovyev.android.checkout.Inventory
    public int load(Inventory.Request request, Inventory.Callback callback) {
        int i;
        synchronized (this.mLock) {
            Task task = new Task(request, callback);
            this.mTasks.add(task);
            task.run();
            i = task.mId;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <R> RequestListener<R> synchronizedListener(RequestListener<R> requestListener) {
        return new SynchronizedRequestListener(requestListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public final class Task {
        private Inventory.Callback mCallback;
        private final int mId;
        private final Inventory.Products mProducts = new Inventory.Products();
        private final Inventory.Request mRequest;

        public Task(Inventory.Request request, Inventory.Callback callback) {
            this.mId = BaseInventory.this.mTaskIdGenerator.getAndIncrement();
            this.mRequest = request.copy();
            this.mCallback = callback;
        }

        public boolean isCancelled() {
            boolean z;
            synchronized (BaseInventory.this.mLock) {
                z = this.mCallback == null;
            }
            return z;
        }

        public void run() {
            BaseInventory.this.createWorker(this).run();
        }

        public Inventory.Request getRequest() {
            return this.mRequest;
        }

        public void onDone(Inventory.Products products) {
            synchronized (BaseInventory.this.mLock) {
                this.mProducts.merge(products);
                onDone();
            }
        }

        public boolean onMaybeDone(Inventory.Products products) {
            synchronized (BaseInventory.this.mLock) {
                this.mProducts.merge(products);
                if (existsUnsupported()) {
                    return false;
                }
                onDone();
                return true;
            }
        }

        private void onDone() {
            Thread.holdsLock(BaseInventory.this.mLock);
            if (this.mCallback == null) {
                return;
            }
            BaseInventory.this.mTasks.remove(this);
            this.mCallback.onLoaded(this.mProducts);
            this.mCallback = null;
        }

        private boolean existsUnsupported() {
            Thread.holdsLock(BaseInventory.this.mLock);
            Iterator<Inventory.Product> it = this.mProducts.iterator();
            while (it.hasNext()) {
                if (!it.next().supported) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class SynchronizedRequestListener<R> implements RequestListener<R> {
        private final RequestListener<R> mListener;

        public SynchronizedRequestListener(RequestListener<R> requestListener) {
            this.mListener = requestListener;
        }

        @Override // org.solovyev.android.checkout.RequestListener
        public void onSuccess(R r) {
            synchronized (BaseInventory.this.mLock) {
                this.mListener.onSuccess(r);
            }
        }

        @Override // org.solovyev.android.checkout.RequestListener
        public void onError(int i, Exception exc) {
            synchronized (BaseInventory.this.mLock) {
                this.mListener.onError(i, exc);
            }
        }
    }
}
