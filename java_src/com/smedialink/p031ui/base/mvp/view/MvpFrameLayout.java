package com.smedialink.p031ui.base.mvp.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.smedialink.p031ui.base.mvp.view.ICustomMvpView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.MvpDelegate;
import org.koin.core.Koin;
/* compiled from: MvpFrameLayout.kt */
/* renamed from: com.smedialink.ui.base.mvp.view.MvpFrameLayout */
/* loaded from: classes3.dex */
public class MvpFrameLayout extends FrameLayout implements ICustomMvpView<MvpFrameLayout> {
    private final Lazy mMvpDelegate$delegate;

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return ICustomMvpView.DefaultImpls.getKoin(this);
    }

    @Override // com.smedialink.p031ui.base.mvp.view.ICustomMvpView, moxy.MvpDelegateHolder
    public MvpDelegate<MvpFrameLayout> getMvpDelegate() {
        return ICustomMvpView.DefaultImpls.getMvpDelegate(this);
    }

    public void onCreateMvpView() {
        ICustomMvpView.DefaultImpls.onCreateMvpView(this);
    }

    public void onDestroyMvpView() {
        ICustomMvpView.DefaultImpls.onDestroyMvpView(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new MvpFrameLayout$mMvpDelegate$2(this));
        this.mMvpDelegate$delegate = lazy;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MvpFrameLayout(Context context) {
        this(context, null, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.smedialink.p031ui.base.mvp.view.ICustomMvpView
    public MvpDelegate<MvpFrameLayout> getMMvpDelegate() {
        return (MvpDelegate) this.mMvpDelegate$delegate.getValue();
    }
}
