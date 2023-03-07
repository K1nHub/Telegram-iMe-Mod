package com.chad.library.adapter.base.viewholder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BaseViewHolder.kt */
@Keep
/* loaded from: classes.dex */
public class BaseViewHolder extends RecyclerView.ViewHolder {
    private final SparseArray<View> views;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseViewHolder(View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.views = new SparseArray<>();
    }

    public <T extends View> T getView(int i) {
        T t = (T) getViewOrNull(i);
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("No view found with id ", Integer.valueOf(i)).toString());
    }

    public <T extends View> T getViewOrNull(int i) {
        T t;
        T t2 = (T) this.views.get(i);
        if (t2 == null && (t = (T) this.itemView.findViewById(i)) != null) {
            this.views.put(i, t);
            return t;
        } else if (t2 != null) {
            return t2;
        } else {
            return null;
        }
    }

    public <T extends View> T findView(int i) {
        return (T) this.itemView.findViewById(i);
    }

    public BaseViewHolder setText(int i, CharSequence charSequence) {
        ((TextView) getView(i)).setText(charSequence);
        return this;
    }

    public BaseViewHolder setText(int i, int i2) {
        ((TextView) getView(i)).setText(i2);
        return this;
    }

    public BaseViewHolder setTextColor(int i, int i2) {
        ((TextView) getView(i)).setTextColor(i2);
        return this;
    }

    public BaseViewHolder setTextColorRes(int i, int i2) {
        ((TextView) getView(i)).setTextColor(this.itemView.getResources().getColor(i2));
        return this;
    }

    public BaseViewHolder setImageResource(int i, int i2) {
        ((ImageView) getView(i)).setImageResource(i2);
        return this;
    }

    public BaseViewHolder setImageDrawable(int i, Drawable drawable) {
        ((ImageView) getView(i)).setImageDrawable(drawable);
        return this;
    }

    public BaseViewHolder setImageBitmap(int i, Bitmap bitmap) {
        ((ImageView) getView(i)).setImageBitmap(bitmap);
        return this;
    }

    public BaseViewHolder setBackgroundColor(int i, int i2) {
        getView(i).setBackgroundColor(i2);
        return this;
    }

    public BaseViewHolder setBackgroundResource(int i, int i2) {
        getView(i).setBackgroundResource(i2);
        return this;
    }

    public BaseViewHolder setVisible(int i, boolean z) {
        getView(i).setVisibility(z ? 0 : 4);
        return this;
    }

    public BaseViewHolder setGone(int i, boolean z) {
        getView(i).setVisibility(z ? 8 : 0);
        return this;
    }

    public BaseViewHolder setEnabled(int i, boolean z) {
        getView(i).setEnabled(z);
        return this;
    }
}
