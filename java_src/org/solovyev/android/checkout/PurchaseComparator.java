package org.solovyev.android.checkout;

import java.util.Comparator;
/* loaded from: classes4.dex */
final class PurchaseComparator implements Comparator<Purchase> {
    private static final Comparator<Purchase> EARLIEST_FIRST = new PurchaseComparator(true);
    private static final Comparator<Purchase> LATEST_FIRST = new PurchaseComparator(false);
    private final int mAsc;

    public static int compare(long j, long j2) {
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        if (i < 0) {
            return -1;
        }
        return i == 0 ? 0 : 1;
    }

    private PurchaseComparator(boolean z) {
        this.mAsc = z ? 1 : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Comparator<Purchase> earliestFirst() {
        return EARLIEST_FIRST;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Comparator<Purchase> latestFirst() {
        return LATEST_FIRST;
    }

    @Override // java.util.Comparator
    public int compare(Purchase purchase, Purchase purchase2) {
        return this.mAsc * compare(purchase.time, purchase2.time);
    }
}
