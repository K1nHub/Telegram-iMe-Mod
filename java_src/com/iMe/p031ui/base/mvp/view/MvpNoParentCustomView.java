package com.iMe.p031ui.base.mvp.view;

import com.iMe.p031ui.base.mvp.view.ICustomMvpView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import moxy.MvpDelegate;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
/* compiled from: MvpNoParentCustomView.kt */
/* renamed from: com.iMe.ui.base.mvp.view.MvpNoParentCustomView */
/* loaded from: classes.dex */
public abstract class MvpNoParentCustomView implements ICustomMvpView<MvpNoParentCustomView> {
    private final Lazy mMvpDelegate$delegate;

    @Override // org.koin.core.component.KoinComponent
    public /* synthetic */ Koin getKoin() {
        Koin koin;
        koin = KoinJavaComponent.getKoin();
        return koin;
    }

    @Override // com.iMe.p031ui.base.mvp.view.ICustomMvpView, moxy.MvpDelegateHolder
    public /* synthetic */ MvpDelegate getMvpDelegate() {
        MvpDelegate mMvpDelegate;
        mMvpDelegate = getMMvpDelegate();
        return mMvpDelegate;
    }

    @Override // com.iMe.p031ui.base.mvp.view.ICustomMvpView
    public /* synthetic */ void onCreateMvpView() {
        ICustomMvpView.CC.$default$onCreateMvpView(this);
    }

    @Override // com.iMe.p031ui.base.mvp.view.ICustomMvpView
    public /* synthetic */ void onDestroyMvpView() {
        ICustomMvpView.CC.$default$onDestroyMvpView(this);
    }

    public MvpNoParentCustomView() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new MvpNoParentCustomView$mMvpDelegate$2(this));
        this.mMvpDelegate$delegate = lazy;
    }

    @Override // com.iMe.p031ui.base.mvp.view.ICustomMvpView
    public MvpDelegate<MvpNoParentCustomView> getMMvpDelegate() {
        return (MvpDelegate) this.mMvpDelegate$delegate.getValue();
    }
}
