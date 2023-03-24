package org.solovyev.android.checkout;

import java.util.List;
import org.solovyev.android.checkout.BaseInventory;
import org.solovyev.android.checkout.Checkout;
import org.solovyev.android.checkout.Inventory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class CheckoutInventory extends BaseInventory {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class Worker implements Checkout.Listener, Runnable {
        private int mCount;
        private final Inventory.Products mProducts = new Inventory.Products();
        private final BaseInventory.Task mTask;

        @Override // org.solovyev.android.checkout.Checkout.Listener
        public void onReady(BillingRequests billingRequests) {
        }

        Worker(BaseInventory.Task task) {
            this.mTask = task;
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread.holdsLock(CheckoutInventory.this.mLock);
            this.mCount = ProductTypes.ALL.size() * 3;
            CheckoutInventory.this.mCheckout.whenReady(this);
        }

        @Override // org.solovyev.android.checkout.Checkout.Listener
        public void onReady(BillingRequests billingRequests, String str, boolean z) {
            Inventory.Product product = new Inventory.Product(str, z);
            synchronized (CheckoutInventory.this.mLock) {
                countDown();
                this.mProducts.add(product);
                if (!this.mTask.isCancelled() && product.supported && this.mTask.getRequest().shouldLoadPurchases(str)) {
                    loadPurchases(billingRequests, product);
                } else {
                    countDown(1);
                }
                if (!this.mTask.isCancelled() && product.supported && this.mTask.getRequest().shouldLoadSkus(str)) {
                    loadSkus(billingRequests, product);
                } else {
                    countDown(1);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void countDown() {
            Thread.holdsLock(CheckoutInventory.this.mLock);
            countDown(1);
        }

        private void countDown(int i) {
            Thread.holdsLock(CheckoutInventory.this.mLock);
            this.mCount -= i;
            if (this.mCount == 0) {
                this.mTask.onDone(this.mProducts);
            }
        }

        private void loadPurchases(BillingRequests billingRequests, final Inventory.Product product) {
            billingRequests.getAllPurchases(product.f1422id, CheckoutInventory.this.synchronizedListener(new RequestListener<Purchases>() { // from class: org.solovyev.android.checkout.CheckoutInventory.Worker.1
                @Override // org.solovyev.android.checkout.RequestListener
                public void onSuccess(Purchases purchases) {
                    product.setPurchases(purchases.list);
                    Worker.this.countDown();
                }

                @Override // org.solovyev.android.checkout.RequestListener
                public void onError(int i, Exception exc) {
                    Worker.this.countDown();
                }
            }));
        }

        private void loadSkus(BillingRequests billingRequests, final Inventory.Product product) {
            List<String> skus = this.mTask.getRequest().getSkus(product.f1422id);
            if (skus.isEmpty()) {
                Billing.warning("There are no SKUs for \"" + product.f1422id + "\" product. No SKU information will be loaded");
                synchronized (CheckoutInventory.this.mLock) {
                    countDown();
                }
                return;
            }
            billingRequests.getSkus(product.f1422id, skus, CheckoutInventory.this.synchronizedListener(new RequestListener<Skus>() { // from class: org.solovyev.android.checkout.CheckoutInventory.Worker.2
                @Override // org.solovyev.android.checkout.RequestListener
                public void onSuccess(Skus skus2) {
                    product.setSkus(skus2.list);
                    Worker.this.countDown();
                }

                @Override // org.solovyev.android.checkout.RequestListener
                public void onError(int i, Exception exc) {
                    Worker.this.countDown();
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CheckoutInventory(Checkout checkout) {
        super(checkout);
    }

    @Override // org.solovyev.android.checkout.BaseInventory
    protected Runnable createWorker(BaseInventory.Task task) {
        return new Worker(task);
    }
}
