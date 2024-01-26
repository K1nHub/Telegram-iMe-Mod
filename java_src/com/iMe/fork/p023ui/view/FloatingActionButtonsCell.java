package com.iMe.fork.p023ui.view;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SimpleTextView>() { // from class: com.iMe.fork.ui.view.FloatingActionButtonsCell$textView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final SimpleTextView invoke() {
                SimpleTextView initTextView;
                initTextView = FloatingActionButtonsCell.this.initTextView();
                return initTextView;
            }
        });
        this.textView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<FabsView>() { // from class: com.iMe.fork.ui.view.FloatingActionButtonsCell$fabsView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FabsView invoke() {
                FabsView initFabsView;
                initFabsView = FloatingActionButtonsCell.this.initFabsView();
                return initFabsView;
            }
        });
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
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SimpleTextView initTextView() {
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        simpleTextView.setText(LocaleController.getInternalString(C3632R.string.create_folder_change_fab_title));
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
