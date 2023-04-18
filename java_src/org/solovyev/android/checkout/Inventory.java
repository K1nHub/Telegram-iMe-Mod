package org.solovyev.android.checkout;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.solovyev.android.checkout.Purchase;
/* loaded from: classes4.dex */
public interface Inventory {

    /* loaded from: classes4.dex */
    public interface Callback {
        void onLoaded(Products products);
    }

    int load(Request request, Callback callback);

    /* loaded from: classes4.dex */
    public static final class Products implements Iterable<Product> {
        private final Map<String, Product> mMap = new HashMap();

        static {
            new Products();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Products() {
            for (String str : ProductTypes.ALL) {
                this.mMap.put(str, new Product(str, false));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void add(Product product) {
            this.mMap.put(product.f1348id, product);
        }

        public Product get(String str) {
            ProductTypes.checkSupported(str);
            return this.mMap.get(str);
        }

        @Override // java.lang.Iterable
        public Iterator<Product> iterator() {
            return Collections.unmodifiableCollection(this.mMap.values()).iterator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void merge(Products products) {
            Product product;
            for (Map.Entry<String, Product> entry : this.mMap.entrySet()) {
                if (!entry.getValue().supported && (product = products.mMap.get(entry.getKey())) != null) {
                    entry.setValue(product);
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class Product {

        /* renamed from: id */
        public final String f1348id;
        final List<Purchase> mPurchases = new ArrayList();
        final List<Sku> mSkus = new ArrayList();
        public final boolean supported;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Product(String str, boolean z) {
            ProductTypes.checkSupported(str);
            this.f1348id = str;
            this.supported = z;
        }

        public boolean isPurchased(Sku sku) {
            return isPurchased(sku.f1350id.code);
        }

        public boolean isPurchased(String str) {
            return hasPurchaseInState(str, Purchase.State.PURCHASED);
        }

        public boolean hasPurchaseInState(String str, Purchase.State state) {
            return getPurchaseInState(str, state) != null;
        }

        public Purchase getPurchaseInState(String str, Purchase.State state) {
            return Purchases.getPurchaseInState(this.mPurchases, str, state);
        }

        public List<Purchase> getPurchases() {
            return Collections.unmodifiableList(this.mPurchases);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setPurchases(List<Purchase> list) {
            this.mPurchases.isEmpty();
            this.mPurchases.addAll(Purchases.neutralize(list));
            Collections.sort(this.mPurchases, PurchaseComparator.latestFirst());
        }

        public List<Sku> getSkus() {
            return Collections.unmodifiableList(this.mSkus);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setSkus(List<Sku> list) {
            this.mSkus.isEmpty();
            this.mSkus.addAll(list);
        }
    }

    /* loaded from: classes4.dex */
    public static final class Request {
        private final Map<String, List<String>> mSkus = new HashMap();
        private final Set<String> mProducts = new HashSet();

        private Request() {
            for (String str : ProductTypes.ALL) {
                this.mSkus.put(str, new ArrayList(5));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Request copy() {
            Request request = new Request();
            request.mSkus.putAll(this.mSkus);
            request.mProducts.addAll(this.mProducts);
            return request;
        }

        public static Request create() {
            return new Request();
        }

        public Request loadAllPurchases() {
            this.mProducts.addAll(ProductTypes.ALL);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean shouldLoadPurchases(String str) {
            return this.mProducts.contains(str);
        }

        public Request loadSkus(String str, List<String> list) {
            for (String str2 : list) {
                loadSkus(str, str2);
            }
            return this;
        }

        public Request loadSkus(String str, String str2) {
            ProductTypes.checkSupported(str);
            List<String> list = this.mSkus.get(str);
            list.contains(str2);
            list.add(str2);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean shouldLoadSkus(String str) {
            ProductTypes.checkSupported(str);
            return !this.mSkus.get(str).isEmpty();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<String> getSkus(String str) {
            return this.mSkus.get(str);
        }
    }
}
