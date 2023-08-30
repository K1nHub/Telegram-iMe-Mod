package com.iMe.utils.extentions.common;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: BaseQuickAdapterExt.kt */
/* loaded from: classes4.dex */
public final class BaseQuickAdapterExtKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> BaseItemProvider<T> asItem(BaseItemProvider<?> baseItemProvider) {
        Intrinsics.checkNotNullParameter(baseItemProvider, "<this>");
        return baseItemProvider;
    }

    public static final BaseViewHolder setThemedTextColor(BaseViewHolder baseViewHolder, int i, int i2) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        ((TextView) baseViewHolder.getView(i)).setTextColor(Theme.getColor(i2));
        return baseViewHolder;
    }

    public static final <T extends View> BaseViewHolder applyForView(BaseViewHolder baseViewHolder, int i, Function1<? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        action.invoke(baseViewHolder.getView(i));
        return baseViewHolder;
    }

    public static final BaseViewHolder setThemedBackgroundColor(BaseViewHolder baseViewHolder, int i, int i2) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        baseViewHolder.getView(i).setBackgroundColor(Theme.getColor(i2));
        return baseViewHolder;
    }

    public static final BaseViewHolder setRippleBackground(BaseViewHolder baseViewHolder, int i, boolean z) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        ViewExtKt.setRippleBackground(baseViewHolder.getView(i), z);
        return baseViewHolder;
    }

    public static final BaseViewHolder setCircleRippleBackground(BaseViewHolder baseViewHolder, int i) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        ViewExtKt.setCircleRippleBackground(baseViewHolder.getView(i));
        return baseViewHolder;
    }

    public static final BaseViewHolder setAutoSizedCircleRippleBackground(BaseViewHolder baseViewHolder, int i) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        ViewExtKt.setAutoSizedCircleRippleBackground(baseViewHolder.getView(i));
        return baseViewHolder;
    }

    public static final BaseViewHolder setRippleForeground(BaseViewHolder baseViewHolder, int i, boolean z) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        ViewExtKt.setRippleForeground(baseViewHolder.getView(i), z);
        return baseViewHolder;
    }

    public static final BaseViewHolder setForeground(BaseViewHolder baseViewHolder, int i, Drawable drawable) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        baseViewHolder.getView(i).setForeground(drawable);
        return baseViewHolder;
    }

    public static final BaseViewHolder setThemedRoundedBackground(BaseViewHolder baseViewHolder, int i, int i2, float f) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        View view = baseViewHolder.getView(i);
        PaintDrawable paintDrawable = new PaintDrawable(Theme.getColor(i2));
        paintDrawable.setCornerRadius(AndroidUtilities.m73dp(f));
        view.setBackground(paintDrawable);
        return baseViewHolder;
    }

    public static final BaseViewHolder setThemedCompoundDrawablesColor(BaseViewHolder baseViewHolder, int i, int i2) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        ViewExtKt.setCompoundDrawablesColor((TextView) baseViewHolder.getView(i), Theme.getColor(i2));
        return baseViewHolder;
    }

    public static final BaseViewHolder setThemedImageColor(BaseViewHolder baseViewHolder, int i, int i2) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        View view = baseViewHolder.getView(i);
        if (view instanceof ImageView) {
            ImageViewExtKt.setImageColor((ImageView) view, Theme.getColor(i2));
        }
        return baseViewHolder;
    }

    public static final BaseViewHolder setVisibleElseGone(BaseViewHolder baseViewHolder, int i, boolean z) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        baseViewHolder.getView(i).setVisibility(z ? 0 : 8);
        return baseViewHolder;
    }

    public static final BaseViewHolder setPadding(BaseViewHolder baseViewHolder, int i, float f, float f2, float f3, float f4) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        baseViewHolder.getView(i).setPadding(AndroidUtilities.m73dp(f), AndroidUtilities.m73dp(f2), AndroidUtilities.m73dp(f3), AndroidUtilities.m73dp(f4));
        return baseViewHolder;
    }

    public static final BaseViewHolder setAlpha(BaseViewHolder baseViewHolder, int i, float f) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        baseViewHolder.getView(i).setAlpha(f);
        return baseViewHolder;
    }

    public static final BaseViewHolder setRotate(BaseViewHolder baseViewHolder, int i, float f) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        baseViewHolder.getView(i).setRotation(f);
        return baseViewHolder;
    }

    public static final BaseViewHolder setThemedCardBackground(BaseViewHolder baseViewHolder, int i, int i2) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        View view = baseViewHolder.getView(i);
        if (view instanceof CardView) {
            ((CardView) view).setCardBackgroundColor(Theme.getColor(i2));
        }
        return baseViewHolder;
    }

    public static final boolean isViewType(BaseViewHolder baseViewHolder, int i) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        return i == baseViewHolder.getItemViewType();
    }

    public static /* synthetic */ BaseViewHolder loadImage$default(BaseViewHolder baseViewHolder, int i, String str, Integer num, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            num = null;
        }
        if ((i2 & 8) != 0) {
            z = true;
        }
        return loadImage(baseViewHolder, i, str, num, z);
    }

    public static final BaseViewHolder loadImage(BaseViewHolder baseViewHolder, int i, String url, Integer num, boolean z) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        ImageViewExtKt.loadFrom((AppCompatImageView) baseViewHolder.getView(i), url, num, z);
        return baseViewHolder;
    }

    public static final BaseViewHolder loadImageWithHeaders(BaseViewHolder baseViewHolder, int i, String url, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        ViewExtKt.loadImage((ImageView) baseViewHolder.getView(i), url, headers);
        return baseViewHolder;
    }

    public static final <T extends BaseNode> BaseNodeProvider<T> asNode(BaseItemProvider<?> baseItemProvider) {
        Intrinsics.checkNotNullParameter(baseItemProvider, "<this>");
        return (BaseNodeProvider) baseItemProvider;
    }

    public static final BaseViewHolder setGone(BaseViewHolder baseViewHolder, boolean z, int... viewIds) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        Intrinsics.checkNotNullParameter(viewIds, "viewIds");
        for (int i : viewIds) {
            baseViewHolder.getView(i).setVisibility(z ? 8 : 0);
        }
        return baseViewHolder;
    }

    public static final BaseViewHolder setMediumTypeface(BaseViewHolder baseViewHolder, int... viewIds) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        Intrinsics.checkNotNullParameter(viewIds, "viewIds");
        for (int i : viewIds) {
            ViewExtKt.withMediumTypeface((TextView) baseViewHolder.getView(i));
        }
        return baseViewHolder;
    }

    public static final BaseViewHolder setThemedImageColor(BaseViewHolder baseViewHolder, int i, int... viewIds) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        Intrinsics.checkNotNullParameter(viewIds, "viewIds");
        for (int i2 : viewIds) {
            ImageViewExtKt.setImageColor((ImageView) baseViewHolder.getView(i2), Theme.getColor(i));
        }
        return baseViewHolder;
    }

    public static final BaseViewHolder setThemedTextColor(BaseViewHolder baseViewHolder, int i, int... viewIds) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        Intrinsics.checkNotNullParameter(viewIds, "viewIds");
        for (int i2 : viewIds) {
            ((TextView) baseViewHolder.getView(i2)).setTextColor(Theme.getColor(i));
        }
        return baseViewHolder;
    }
}
