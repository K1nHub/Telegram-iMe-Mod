package com.smedialink.p031ui.base.mvp;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.base.mvp.base.MvpBaseDelegate;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.extentions.common.ContextExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import com.smedialink.utils.hints.HintUtils;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.MvpDelegateHolder;
import org.fork.utils.Callbacks$Callback;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* compiled from: MvpFragment.kt */
/* renamed from: com.smedialink.ui.base.mvp.MvpFragment */
/* loaded from: classes3.dex */
public abstract class MvpFragment extends BaseFragment implements MvpDelegateHolder, KoinComponent, BaseView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(MvpFragment.class, "hintUtils", "getHintUtils()Lcom/smedialink/utils/hints/HintUtils;", 0))};
    private final Lazy mvpBaseDelegate$delegate = LazyKt.lazy(new MvpFragment$mvpBaseDelegate$2(this));
    private final ResettableLazy hintUtils$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, MvpFragment$hintUtils$2.INSTANCE, 1, (Object) null);
    private final CompositeDisposable subscriptions = new CompositeDisposable();

    public abstract View onCreateView(Context context);

    public abstract void onViewReady();

    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    public final MvpBaseDelegate<MvpFragment> getMvpBaseDelegate() {
        return (MvpBaseDelegate) this.mvpBaseDelegate$delegate.getValue();
    }

    public final HintUtils getHintUtils() {
        return (HintUtils) this.hintUtils$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void postViewAction$lambda$0(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    public final void postViewAction(final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        getMvpBaseDelegate().getViewHandler().post(new Runnable() { // from class: com.smedialink.ui.base.mvp.MvpFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MvpFragment.postViewAction$lambda$0(Function0.this);
            }
        });
    }

    public static /* synthetic */ void postViewActionDelayed$default(MvpFragment mvpFragment, long j, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: postViewActionDelayed");
        }
        if ((i & 1) != 0) {
            j = 150;
        }
        mvpFragment.postViewActionDelayed(j, callbacks$Callback);
    }

    public final void postViewActionDelayed(long j, final Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "action");
        getMvpBaseDelegate().getViewHandler().postDelayed(new Runnable() { // from class: com.smedialink.ui.base.mvp.MvpFragment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Callbacks$Callback.this.invoke();
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void autoDispose(Disposable disposable) {
        Intrinsics.checkNotNullParameter(disposable, "<this>");
        this.subscriptions.add(disposable);
    }

    @Override // moxy.MvpDelegateHolder
    public MvpDelegate<MvpFragment> getMvpDelegate() {
        return getMvpBaseDelegate().getMvpDelegate();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        getMvpBaseDelegate().getResettableLazyManager().reset();
        this.fragmentView = onCreateView(context);
        MvpDelegate<MvpFragment> mvpDelegate = getMvpBaseDelegate().getMvpDelegate();
        if (mvpDelegate != null) {
            mvpDelegate.onCreate();
        }
        View fragmentView = this.fragmentView;
        Intrinsics.checkNotNullExpressionValue(fragmentView, "fragmentView");
        return fragmentView;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onViewCreated() {
        onViewReady();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        super.onBecomeFullyHidden();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        getMvpBaseDelegate().onPause();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getMvpBaseDelegate().onResume();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onDestroyView() {
        getMvpBaseDelegate().onDestroyView();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        getHintUtils().hideHint();
        super.onTransitionAnimationStart(z, z2);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        this.subscriptions.clear();
        getMvpBaseDelegate().onDetachedFromWindow();
        super.onFragmentDestroy();
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
    public void showToast(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (text.length() > 0) {
            ContextExtKt.longToast(text);
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
    public void finishScreen() {
        finishFragment();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void saveSelfArgs(Bundle bundle) {
        super.saveSelfArgs(bundle);
        MvpDelegate<MvpFragment> mvpDelegate = getMvpBaseDelegate().getMvpDelegate();
        if (mvpDelegate != null) {
            mvpDelegate.onSaveInstanceState(bundle);
        }
    }

    public void showAlertDialog(DialogModel dialogModel, Callbacks$Callback positiveAction, Callbacks$Callback cancelAction, boolean z) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(positiveAction, "positiveAction");
        Intrinsics.checkNotNullParameter(cancelAction, "cancelAction");
        MvpBaseDelegate<MvpFragment> mvpBaseDelegate = getMvpBaseDelegate();
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        AlertDialog createDialog = DialogUtils.createDialog(parentActivity, dialogModel, positiveAction, cancelAction);
        createDialog.setCanceledOnTouchOutside(z);
        createDialog.setCancelable(z);
        mvpBaseDelegate.showDialog(createDialog);
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
    public void showLoadingDialog(boolean z, boolean z2, Disposable disposable) {
        getMvpBaseDelegate().showLoadingDialog(z, z2, disposable);
    }
}
