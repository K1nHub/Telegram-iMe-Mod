package org.telegram.p048ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.Components.Paint.PaintTypeface;
import org.telegram.p048ui.Components.Paint.Views.PaintTextOptionsView;
import org.telegram.p048ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.Components.Paint.Views.PaintTypefaceListView */
/* loaded from: classes6.dex */
public class PaintTypefaceListView extends RecyclerListView {
    private Path mask;
    private Consumer<Path> maskProvider;

    public PaintTypefaceListView(Context context) {
        super(context);
        this.mask = new Path();
        setWillNotDraw(false);
        setLayoutManager(new LinearLayoutManager(context));
        setAdapter(new RecyclerListView.SelectionAdapter(this) { // from class: org.telegram.ui.Components.Paint.Views.PaintTypefaceListView.1
            @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                PaintTextOptionsView.TypefaceCell typefaceCell = new PaintTextOptionsView.TypefaceCell(viewGroup.getContext());
                typefaceCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(typefaceCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                ((PaintTextOptionsView.TypefaceCell) viewHolder.itemView).bind(PaintTypeface.get().get(i));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return PaintTypeface.get().size();
            }
        });
        setPadding(0, AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((Math.min(PaintTypeface.get().size(), 6) * AndroidUtilities.m50dp(48)) + AndroidUtilities.m50dp(16), 1073741824));
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void draw(Canvas canvas) {
        Consumer<Path> consumer = this.maskProvider;
        if (consumer != null) {
            consumer.accept(this.mask);
            canvas.save();
            canvas.clipPath(this.mask);
        }
        super.draw(canvas);
        if (this.maskProvider != null) {
            canvas.restore();
        }
    }

    public void setMaskProvider(Consumer<Path> consumer) {
        this.maskProvider = consumer;
        invalidate();
    }
}
