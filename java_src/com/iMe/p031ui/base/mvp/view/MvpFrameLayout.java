package com.iMe.p031ui.base.mvp.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.iMe.p031ui.base.mvp.view.ICustomMvpView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.MvpDelegate;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
/* compiled from: MvpFrameLayout.kt */
/* renamed from: com.iMe.ui.base.mvp.view.MvpFrameLayout */
/* loaded from: classes.dex */
public class MvpFrameLayout extends FrameLayout implements ICustomMvpView<MvpFrameLayout> {
    private final Lazy mMvpDelegate$delegate;

    public /* bridge */ /* synthetic */ Koin getKoin() {
        Koin koin;
        koin = KoinJavaComponent.getKoin();
        return koin;
    }

    public /* bridge */ /* synthetic */ MvpDelegate<T> getMvpDelegate() {
        MvpDelegate<T> mMvpDelegate;
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

    @Override // com.iMe.p031ui.base.mvp.view.ICustomMvpView
    public MvpDelegate<MvpFrameLayout> getMMvpDelegate() {
        return (MvpDelegate) this.mMvpDelegate$delegate.getValue();
    }
}
