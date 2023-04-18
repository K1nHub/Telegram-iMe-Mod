package org.telegram.p044ui.Components;

import android.content.Context;
import android.util.SparseIntArray;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.ExtendedGridLayoutManager */
/* loaded from: classes6.dex */
public class ExtendedGridLayoutManager extends GridLayoutManager {
    private int calculatedWidth;
    private final boolean firstRowFullWidth;
    private int firstRowMax;
    private SparseIntArray itemSpans;
    private SparseIntArray itemsToRow;
    private final boolean lastRowFullWidth;
    private int rowsCount;

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return 1;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    public ExtendedGridLayoutManager(Context context, int i) {
        this(context, i, false);
    }

    public ExtendedGridLayoutManager(Context context, int i, boolean z) {
        this(context, i, z, false);
    }

    public ExtendedGridLayoutManager(Context context, int i, boolean z, boolean z2) {
        super(context, i);
        this.itemSpans = new SparseIntArray();
        this.itemsToRow = new SparseIntArray();
        this.lastRowFullWidth = z;
        this.firstRowFullWidth = z2;
    }

    private void prepareLayout(float f) {
        Size sizeForItem;
        int i;
        int i2;
        float f2 = f == BitmapDescriptorFactory.HUE_RED ? 100.0f : f;
        this.itemSpans.clear();
        this.itemsToRow.clear();
        int i3 = 0;
        this.rowsCount = 0;
        this.firstRowMax = 0;
        int flowItemCount = getFlowItemCount();
        if (flowItemCount == 0) {
            return;
        }
        int m50dp = AndroidUtilities.m50dp(100);
        int spanCount = getSpanCount();
        int i4 = (this.lastRowFullWidth ? 1 : 0) + flowItemCount;
        int i5 = 0;
        int i6 = 0;
        int i7 = spanCount;
        while (i5 < i4) {
            if (i5 == 0 && this.firstRowFullWidth) {
                SparseIntArray sparseIntArray = this.itemSpans;
                sparseIntArray.put(i5, sparseIntArray.get(i5) + spanCount);
                this.itemsToRow.put(i3, this.rowsCount);
                this.rowsCount++;
                i6 = i3;
                i7 = spanCount;
            } else {
                if ((i5 < flowItemCount ? sizeForItem(i5) : null) == null) {
                    i2 = i6 != 0 ? 1 : i3;
                    i = spanCount;
                } else {
                    int min = Math.min(spanCount, (int) Math.floor(spanCount * (((sizeForItem.width / sizeForItem.height) * m50dp) / f2)));
                    i = min;
                    i2 = (i7 < min || (min > 33 && i7 < min + (-15))) ? 1 : i3;
                }
                if (i2 != 0) {
                    if (i7 != 0) {
                        int i8 = i7 / i6;
                        int i9 = i5 - i6;
                        int i10 = i9;
                        while (true) {
                            int i11 = i9 + i6;
                            if (i10 >= i11) {
                                break;
                            }
                            if (i10 == i11 - 1) {
                                SparseIntArray sparseIntArray2 = this.itemSpans;
                                sparseIntArray2.put(i10, sparseIntArray2.get(i10) + i7);
                            } else {
                                SparseIntArray sparseIntArray3 = this.itemSpans;
                                sparseIntArray3.put(i10, sparseIntArray3.get(i10) + i8);
                            }
                            i7 -= i8;
                            i10++;
                        }
                        this.itemsToRow.put(i5 - 1, this.rowsCount);
                    }
                    if (i5 == flowItemCount) {
                        break;
                    }
                    this.rowsCount++;
                    i7 = spanCount;
                    i6 = 0;
                } else if (i7 < i) {
                    i = i7;
                }
                if (this.rowsCount == 0) {
                    this.firstRowMax = Math.max(this.firstRowMax, i5);
                }
                if (i5 == flowItemCount - 1 && !this.lastRowFullWidth) {
                    this.itemsToRow.put(i5, this.rowsCount);
                }
                i6++;
                i7 -= i;
                this.itemSpans.put(i5, i);
            }
            i5++;
            i3 = 0;
        }
        this.rowsCount++;
    }

    private Size sizeForItem(int i) {
        return fixSize(getSizeForItem(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Size fixSize(Size size) {
        if (size == null) {
            return null;
        }
        if (size.width == BitmapDescriptorFactory.HUE_RED) {
            size.width = 100.0f;
        }
        if (size.height == BitmapDescriptorFactory.HUE_RED) {
            size.height = 100.0f;
        }
        float f = size.width;
        float f2 = size.height;
        float f3 = f / f2;
        if (f3 > 4.0f || f3 < 0.2f) {
            float max = Math.max(f, f2);
            size.width = max;
            size.height = max;
        }
        return size;
    }

    protected Size getSizeForItem(int i) {
        return new Size(100.0f, 100.0f);
    }

    private void checkLayout() {
        if (this.itemSpans.size() == getFlowItemCount() && this.calculatedWidth == getWidth()) {
            return;
        }
        this.calculatedWidth = getWidth();
        prepareLayout(getWidth());
    }

    public int getSpanSizeForItem(int i) {
        checkLayout();
        return this.itemSpans.get(i);
    }

    public int getRowsCount(int i) {
        if (this.rowsCount == 0) {
            prepareLayout(i);
        }
        return this.rowsCount;
    }

    public boolean isLastInRow(int i) {
        checkLayout();
        return this.itemsToRow.get(i, Integer.MAX_VALUE) != Integer.MAX_VALUE;
    }

    public boolean isFirstRow(int i) {
        checkLayout();
        return i <= this.firstRowMax;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getFlowItemCount() {
        return getItemCount();
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return state.getItemCount();
    }
}
