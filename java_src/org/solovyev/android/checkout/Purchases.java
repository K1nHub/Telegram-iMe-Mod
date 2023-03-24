package org.solovyev.android.checkout;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.solovyev.android.checkout.Purchase;
/* loaded from: classes4.dex */
public final class Purchases {
    public final String continuationToken;
    public final List<Purchase> list;
    public final String product;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Purchases(String str, List<Purchase> list, String str2) {
        this.product = str;
        this.list = Collections.unmodifiableList(list);
        this.continuationToken = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getContinuationTokenFromBundle(Bundle bundle) {
        return bundle.getString("INAPP_CONTINUATION_TOKEN");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Purchase> getListFromBundle(Bundle bundle) throws JSONException {
        List<String> extractDatasList = extractDatasList(bundle);
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList(extractDatasList.size());
        for (int i = 0; i < extractDatasList.size(); i++) {
            arrayList.add(Purchase.fromJson(extractDatasList.get(i), stringArrayList != null ? stringArrayList.get(i) : ""));
        }
        return arrayList;
    }

    private static List<String> extractDatasList(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        return stringArrayList != null ? stringArrayList : Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Purchase getPurchaseInState(List<Purchase> list, String str, Purchase.State state) {
        for (Purchase purchase : list) {
            if (purchase.sku.equals(str) && purchase.state == state) {
                return purchase;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Purchase> neutralize(List<Purchase> list) {
        LinkedList linkedList = new LinkedList(list);
        ArrayList arrayList = new ArrayList(linkedList.size());
        Collections.sort(linkedList, PurchaseComparator.earliestFirst());
        while (!linkedList.isEmpty()) {
            Purchase purchase = (Purchase) linkedList.get(0);
            int i = C32141.$SwitchMap$org$solovyev$android$checkout$Purchase$State[purchase.state.ordinal()];
            if (i == 1) {
                if (!isNeutralized(linkedList, purchase)) {
                    arrayList.add(purchase);
                }
            } else if ((i == 2 || i == 3 || i == 4) && !isDangling(linkedList, purchase)) {
                arrayList.add(purchase);
            }
            linkedList.remove(0);
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.solovyev.android.checkout.Purchases$1 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C32141 {
        static final /* synthetic */ int[] $SwitchMap$org$solovyev$android$checkout$Purchase$State;

        static {
            int[] iArr = new int[Purchase.State.values().length];
            $SwitchMap$org$solovyev$android$checkout$Purchase$State = iArr;
            try {
                iArr[Purchase.State.PURCHASED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$solovyev$android$checkout$Purchase$State[Purchase.State.CANCELLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$solovyev$android$checkout$Purchase$State[Purchase.State.REFUNDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$solovyev$android$checkout$Purchase$State[Purchase.State.EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static boolean isDangling(List<Purchase> list, Purchase purchase) {
        Purchase.State state = purchase.state;
        Purchase.State state2 = Purchase.State.PURCHASED;
        for (int i = 1; i < list.size(); i++) {
            if (list.get(i).sku.equals(purchase.sku)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isNeutralized(List<Purchase> list, Purchase purchase) {
        Purchase.State state = purchase.state;
        Purchase.State state2 = Purchase.State.PURCHASED;
        for (int i = 1; i < list.size(); i++) {
            Purchase purchase2 = list.get(i);
            if (purchase2.sku.equals(purchase.sku)) {
                int i2 = C32141.$SwitchMap$org$solovyev$android$checkout$Purchase$State[purchase2.state.ordinal()];
                if (i2 == 1) {
                    Billing.warning("Two purchases with same SKU found: " + purchase + " and " + purchase2);
                } else if (i2 == 2 || i2 == 3 || i2 == 4) {
                    list.remove(i);
                }
                return true;
            }
        }
        return false;
    }
}
