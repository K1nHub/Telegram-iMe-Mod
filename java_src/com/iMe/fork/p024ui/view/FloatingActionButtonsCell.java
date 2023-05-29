package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: FloatingActionButtonsCell.kt */
/* renamed from: com.iMe.fork.ui.view.FloatingActionButtonsCell */
/* loaded from: classes3.dex */
public final class FloatingActionButtonsCell extends LinearLayout {
    private final Lazy fabsView$delegate;
    private final Lazy textView$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButtonsCell(Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new FloatingActionButtonsCell$textView$2(this));
        this.textView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new FloatingActionButtonsCell$fabsView$2(this));
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
        getTextView().setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(48), 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SimpleTextView initTextView() {
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        simpleTextView.setText(LocaleController.getInternalString(C3295R.string.create_folder_change_fab_title));
        simpleTextView.setTextSize(16);
        return simpleTextView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FabsView initFabsView() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new FabsView(context);
    }

    /* compiled from: FloatingActionButtonsCell.kt */
    /* renamed from: com.iMe.fork.ui.view.FloatingActionButtonsCell$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
