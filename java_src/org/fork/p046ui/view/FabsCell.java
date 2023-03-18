package org.fork.p046ui.view;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.smedialink.storage.domain.model.filters.FilterFab;
import com.smedialink.utils.extentions.common.ViewExtKt;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: FabsCell.kt */
/* renamed from: org.fork.ui.view.FabsCell */
/* loaded from: classes4.dex */
public final class FabsCell extends LinearLayout {
    private final Lazy fabsView$delegate;
    private final Lazy textView$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FabsCell(Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new FabsCell$textView$2(this));
        this.textView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new FabsCell$fabsView$2(this));
        this.fabsView$delegate = lazy2;
        setGravity(17);
        ViewExtKt.setHorizontalPadding(this, 23);
        addView(getTextView(), LayoutHelper.createLinear(0, -2, 1.0f));
        addView(getFabsView());
    }

    private final SimpleTextView getTextView() {
        return (SimpleTextView) this.textView$delegate.getValue();
    }

    private final FabsView getFabsView() {
        return (FabsView) this.fabsView$delegate.getValue();
    }

    public final void setFabs(Set<? extends FilterFab> fabs) {
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        getFabsView().setFabs(fabs);
        updateColors();
    }

    public final void updateColors() {
        getFabsView().updateColors();
        getTextView().setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(48), 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SimpleTextView initTextView() {
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        simpleTextView.setText(LocaleController.getInternalString(C3286R.string.create_folder_change_fab_title));
        simpleTextView.setTextSize(16);
        return simpleTextView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FabsView initFabsView() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new FabsView(context);
    }

    /* compiled from: FabsCell.kt */
    /* renamed from: org.fork.ui.view.FabsCell$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
