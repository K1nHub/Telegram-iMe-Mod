package com.iMe.p031ui.base.mvp;

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
import org.telegram.p044ui.ActionBar.AlertDialog;
/* compiled from: MvpAlertDialog.kt */
/* renamed from: com.iMe.ui.base.mvp.MvpAlertDialog */
/* loaded from: classes3.dex */
public abstract class MvpAlertDialog extends AlertDialog implements MvpDelegateHolder, KoinComponent, BaseView {
    private final MvpBaseDelegate<MvpAlertDialog> mvpBaseDelegate;

    public abstract View onCreateView(Bundle bundle);

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void showErrorToast(Result.Error error, ResourceManager resourceManager) {
        BaseView.CC.$default$showErrorToast(this, error, resourceManager);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpAlertDialog(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mvpBaseDelegate = new MvpBaseDelegate<MvpAlertDialog>() { // from class: com.iMe.ui.base.mvp.MvpAlertDialog$mvpBaseDelegate$1
            private final Lazy context$delegate;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                Lazy lazy;
                lazy = LazyKt__LazyJVMKt.lazy(new MvpAlertDialog$mvpBaseDelegate$1$context$2(MvpAlertDialog.this));
                this.context$delegate = lazy;
            }

            @Override // com.iMe.p031ui.base.mvp.base.BaseDelegate
            public Context getContext() {
                return (Context) this.context$delegate.getValue();
            }

            @Override // com.iMe.p031ui.base.mvp.base.BaseDelegate
            public MvpDelegate<MvpAlertDialog> createDelegate() {
                return new MvpDelegate<>(MvpAlertDialog.this);
            }
        };
    }

    public final MvpBaseDelegate<MvpAlertDialog> getMvpBaseDelegate() {
        return this.mvpBaseDelegate;
    }

    @Override // moxy.MvpDelegateHolder
    public MvpDelegate<MvpAlertDialog> getMvpDelegate() {
        return this.mvpBaseDelegate.getMvpDelegate();
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        MvpBaseDelegate<MvpAlertDialog> mvpBaseDelegate = this.mvpBaseDelegate;
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        Intrinsics.checkNotNullExpressionValue(onSaveInstanceState, "super.onSaveInstanceState()");
        return mvpBaseDelegate.onSaveInstanceState(onSaveInstanceState);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.ActionBar.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCustomView(onCreateView(bundle));
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
