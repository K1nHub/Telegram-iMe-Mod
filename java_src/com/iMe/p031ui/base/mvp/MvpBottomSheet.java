package com.iMe.p031ui.base.mvp;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.base.mvp.base.MvpBaseDelegate;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.MvpDelegate;
import moxy.MvpDelegateHolder;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.telegram.p044ui.ActionBar.BottomSheet;
/* compiled from: MvpBottomSheet.kt */
/* renamed from: com.iMe.ui.base.mvp.MvpBottomSheet */
/* loaded from: classes.dex */
public abstract class MvpBottomSheet extends BottomSheet implements MvpDelegateHolder, KoinComponent, BaseView {
    private final MvpBaseDelegate<MvpBottomSheet> mvpBaseDelegate;

    public abstract View onCreateView(Bundle bundle);

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void showErrorToast(Result.Error error, ResourceManager resourceManager) {
        BaseView.CC.$default$showErrorToast(this, error, resourceManager);
    }

    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpBottomSheet(Context context, boolean z) {
        super(context, z);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mvpBaseDelegate = new MvpBaseDelegate<MvpBottomSheet>() { // from class: com.iMe.ui.base.mvp.MvpBottomSheet$mvpBaseDelegate$1
            private final Lazy context$delegate;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                Lazy lazy;
                lazy = LazyKt__LazyJVMKt.lazy(new MvpBottomSheet$mvpBaseDelegate$1$context$2(MvpBottomSheet.this));
                this.context$delegate = lazy;
            }

            @Override // com.iMe.p031ui.base.mvp.base.BaseDelegate
            public Context getContext() {
                return (Context) this.context$delegate.getValue();
            }

            @Override // com.iMe.p031ui.base.mvp.base.BaseDelegate
            public MvpDelegate<MvpBottomSheet> createDelegate() {
                return new MvpDelegate<>(MvpBottomSheet.this);
            }
        };
    }

    public final MvpBaseDelegate<MvpBottomSheet> getMvpBaseDelegate() {
        return this.mvpBaseDelegate;
    }

    public final Dialog showDialog(Dialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        return this.mvpBaseDelegate.showDialog(dialog);
    }

    @Override // moxy.MvpDelegateHolder
    public MvpDelegate<MvpBottomSheet> getMvpDelegate() {
        return this.mvpBaseDelegate.getMvpDelegate();
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        MvpBaseDelegate<MvpBottomSheet> mvpBaseDelegate = this.mvpBaseDelegate;
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        Intrinsics.checkNotNullExpressionValue(onSaveInstanceState, "super.onSaveInstanceState()");
        return mvpBaseDelegate.onSaveInstanceState(onSaveInstanceState);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.ActionBar.BottomSheet, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.containerView.addView(onCreateView(bundle));
        this.mvpBaseDelegate.onCreate(bundle);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mvpBaseDelegate.onDetachedFromWindow();
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void showToast(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.mvpBaseDelegate.showToast(text);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void showLoadingDialog(boolean z, boolean z2, Disposable disposable) {
        this.mvpBaseDelegate.showLoadingDialog(z, z2, disposable);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void finishScreen() {
        dismiss();
    }
}
