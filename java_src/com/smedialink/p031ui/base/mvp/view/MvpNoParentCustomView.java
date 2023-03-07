package com.smedialink.p031ui.base.mvp.view;

import com.smedialink.p031ui.base.mvp.view.ICustomMvpView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import moxy.MvpDelegate;
import org.koin.core.Koin;
/* compiled from: MvpNoParentCustomView.kt */
/* renamed from: com.smedialink.ui.base.mvp.view.MvpNoParentCustomView */
/* loaded from: classes3.dex */
public abstract class MvpNoParentCustomView implements ICustomMvpView<MvpNoParentCustomView> {
    private final Lazy mMvpDelegate$delegate;

    public MvpNoParentCustomView() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new MvpNoParentCustomView$mMvpDelegate$2(this));
        this.mMvpDelegate$delegate = lazy;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return ICustomMvpView.DefaultImpls.getKoin(this);
    }

    @Override // com.smedialink.p031ui.base.mvp.view.ICustomMvpView, moxy.MvpDelegateHolder
    public MvpDelegate<MvpNoParentCustomView> getMvpDelegate() {
        return ICustomMvpView.DefaultImpls.getMvpDelegate(this);
    }

    public void onCreateMvpView() {
        ICustomMvpView.DefaultImpls.onCreateMvpView(this);
    }

    public void onDestroyMvpView() {
        ICustomMvpView.DefaultImpls.onDestroyMvpView(this);
    }

    @Override // com.smedialink.p031ui.base.mvp.view.ICustomMvpView
    public MvpDelegate<MvpNoParentCustomView> getMMvpDelegate() {
        return (MvpDelegate) this.mMvpDelegate$delegate.getValue();
    }
}
