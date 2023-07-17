package com.iMe.p031ui.base.mvp.base;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import io.reactivex.disposables.Disposable;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.MvpDelegate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.AlertDialog;
import timber.log.Timber;
/* compiled from: MvpBaseDelegate.kt */
/* renamed from: com.iMe.ui.base.mvp.base.MvpBaseDelegate */
/* loaded from: classes.dex */
public abstract class MvpBaseDelegate<T> implements BaseDelegate<T> {
    private MvpDelegate<T> mMvpDelegate;
    private final Lazy progressDialog$delegate;
    private final ResettableLazyManager resettableLazyManager = new ResettableLazyManager();
    private final Handler viewHandler = new Handler(Looper.getMainLooper());
    private Dialog visibleDialog;

    public void onViewReady(Bundle bundle) {
    }

    public MvpBaseDelegate() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new MvpBaseDelegate$progressDialog$2(this));
        this.progressDialog$delegate = lazy;
    }

    public ResettableLazyManager getResettableLazyManager() {
        return this.resettableLazyManager;
    }

    public Handler getViewHandler() {
        return this.viewHandler;
    }

    private final AlertDialog getProgressDialog() {
        return (AlertDialog) this.progressDialog$delegate.getValue();
    }

    public Dialog showDialog(Dialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Dialog dialog2 = this.visibleDialog;
        if (dialog2 != null) {
            dialog2.dismiss();
        }
        this.visibleDialog = dialog;
        if (dialog != null) {
            dialog.show();
        }
        Dialog dialog3 = this.visibleDialog;
        Intrinsics.checkNotNull(dialog3);
        return dialog3;
    }

    public Bundle onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        MvpDelegate<T> mvpDelegate = getMvpDelegate();
        if (mvpDelegate != null) {
            mvpDelegate.onSaveInstanceState(bundle);
        }
        MvpDelegate<T> mvpDelegate2 = getMvpDelegate();
        if (mvpDelegate2 != null) {
            mvpDelegate2.onDetach();
        }
        return bundle;
    }

    public void onCreate(Bundle bundle) {
        MvpDelegate<T> mvpDelegate = getMvpDelegate();
        if (mvpDelegate != null) {
            mvpDelegate.onCreate();
        }
        MvpDelegate<T> mvpDelegate2 = getMvpDelegate();
        if (mvpDelegate2 != null) {
            mvpDelegate2.onAttach();
        }
        onViewReady(bundle);
    }

    public void onPause() {
        getProgressDialog().dismiss();
        MvpDelegate<T> mvpDelegate = getMvpDelegate();
        if (mvpDelegate != null) {
            mvpDelegate.onDetach();
        }
    }

    public void onResume() {
        MvpDelegate<T> mvpDelegate = getMvpDelegate();
        if (mvpDelegate != null) {
            mvpDelegate.onAttach();
        }
    }

    public void onDestroyView() {
        MvpDelegate<T> mvpDelegate = getMvpDelegate();
        if (mvpDelegate != null) {
            mvpDelegate.onDestroyView();
        }
    }

    public void onDetachedFromWindow() {
        Dialog dialog = this.visibleDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        getProgressDialog().dismiss();
        getViewHandler().removeCallbacksAndMessages(null);
        getResettableLazyManager().destroy();
        try {
            MvpDelegate<T> mvpDelegate = getMvpDelegate();
            if (mvpDelegate != null) {
                mvpDelegate.onDetach();
            }
            MvpDelegate<T> mvpDelegate2 = getMvpDelegate();
            if (mvpDelegate2 != null) {
                mvpDelegate2.onDestroyView();
            }
            MvpDelegate<T> mvpDelegate3 = getMvpDelegate();
            if (mvpDelegate3 != null) {
                mvpDelegate3.onDestroy();
            }
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    public MvpDelegate<T> getMvpDelegate() {
        MvpDelegate<T> mvpDelegate = this.mMvpDelegate;
        if (mvpDelegate != null) {
            return mvpDelegate;
        }
        MvpDelegate<T> createDelegate = createDelegate();
        this.mMvpDelegate = createDelegate;
        return createDelegate;
    }

    public void showToast(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (text.length() > 0) {
            ContextExtKt.longToast(text);
        }
    }

    public void showLoadingDialog(final boolean z, final boolean z2, final Disposable disposable) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.ui.base.mvp.base.MvpBaseDelegate$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MvpBaseDelegate.showLoadingDialog$lambda$2(MvpBaseDelegate.this, z, z2, disposable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoadingDialog$lambda$2(MvpBaseDelegate this$0, boolean z, boolean z2, final Disposable disposable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context context = this$0.getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        boolean z3 = false;
        if (activity != null && !activity.isFinishing()) {
            z3 = true;
        }
        if (z3) {
            try {
                AlertDialog progressDialog = this$0.getProgressDialog();
                if (z) {
                    progressDialog.setCanCancel(z2);
                    progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.iMe.ui.base.mvp.base.MvpBaseDelegate$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            MvpBaseDelegate.showLoadingDialog$lambda$2$lambda$1$lambda$0(Disposable.this, dialogInterface);
                        }
                    });
                    progressDialog.show();
                } else {
                    progressDialog.dismiss();
                }
            } catch (Exception e) {
                Timber.m6e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoadingDialog$lambda$2$lambda$1$lambda$0(Disposable disposable, DialogInterface dialogInterface) {
        if (disposable != null) {
            disposable.dispose();
        }
    }
}
