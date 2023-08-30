package com.tbuonomo.viewpagerdotsindicator;

import java.util.Iterator;
import kotlin.collections.IntIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: OnPageChangeListenerHelper.kt */
/* loaded from: classes4.dex */
public abstract class OnPageChangeListenerHelper {
    private int lastLeftPosition = -1;
    private int lastRightPosition = -1;

    public abstract int getPageCount$viewpagerdotsindicator_release();

    public abstract void onPageScrolled$viewpagerdotsindicator_release(int i, int i2, float f);

    public abstract void resetPosition$viewpagerdotsindicator_release(int i);

    public final void onPageScrolled(int i, float f) {
        IntRange until;
        float f2 = i + f;
        float pageCount$viewpagerdotsindicator_release = getPageCount$viewpagerdotsindicator_release() - 1;
        if (f2 == pageCount$viewpagerdotsindicator_release) {
            f2 = pageCount$viewpagerdotsindicator_release - 1.0E-4f;
        }
        int i2 = (int) f2;
        int i3 = i2 + 1;
        if (i3 > pageCount$viewpagerdotsindicator_release || i2 == -1) {
            return;
        }
        onPageScrolled$viewpagerdotsindicator_release(i2, i3, f2 % 1);
        int i4 = this.lastLeftPosition;
        if (i4 != -1) {
            if (i2 > i4) {
                until = RangesKt___RangesKt.until(i4, i2);
                Iterator<Integer> it = until.iterator();
                while (it.hasNext()) {
                    resetPosition$viewpagerdotsindicator_release(((IntIterator) it).nextInt());
                }
            }
            int i5 = this.lastRightPosition;
            if (i3 < i5) {
                resetPosition$viewpagerdotsindicator_release(i5);
                Iterator<Integer> it2 = new IntRange(i3 + 1, this.lastRightPosition).iterator();
                while (it2.hasNext()) {
                    resetPosition$viewpagerdotsindicator_release(((IntIterator) it2).nextInt());
                }
            }
        }
        this.lastLeftPosition = i2;
        this.lastRightPosition = i3;
    }
}
