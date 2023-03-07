package org.solovyev.android.checkout;

import org.solovyev.android.checkout.BaseInventory;
import org.solovyev.android.checkout.Inventory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class FallingBackInventory extends BaseInventory {
    private final Inventory mFallbackInventory;
    private final CheckoutInventory mMainInventory;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class Worker implements Runnable {
        private final BaseInventory.Task mTask;
        private final MainCallback mMainCallback = new MainCallback();
        private final FallbackCallback mFallbackCallback = new FallbackCallback();

        Worker(BaseInventory.Task task) {
            this.mTask = task;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mMainCallback.load();
        }

        /* loaded from: classes4.dex */
        private class MainCallback implements Inventory.Callback {
            private MainCallback() {
            }

            @Override // org.solovyev.android.checkout.Inventory.Callback
            public void onLoaded(Inventory.Products products) {
                if (Worker.this.mTask.onMaybeDone(products)) {
                    return;
                }
                Worker.this.mFallbackCallback.load();
            }

            public void load() {
                FallingBackInventory.this.mMainInventory.load(Worker.this.mTask.getRequest(), this);
            }
        }

        /* loaded from: classes4.dex */
        private class FallbackCallback implements Inventory.Callback {
            private FallbackCallback() {
            }

            @Override // org.solovyev.android.checkout.Inventory.Callback
            public void onLoaded(Inventory.Products products) {
                Worker.this.mTask.onDone(products);
            }

            public void load() {
                FallingBackInventory.this.mFallbackInventory.load(Worker.this.mTask.getRequest(), this);
            }
        }
    }

    public FallingBackInventory(Checkout checkout, Inventory inventory) {
        super(checkout);
        this.mMainInventory = new CheckoutInventory(checkout);
        this.mFallbackInventory = inventory;
    }

    @Override // org.solovyev.android.checkout.BaseInventory
    protected Runnable createWorker(BaseInventory.Task task) {
        return new Worker(task);
    }
}
