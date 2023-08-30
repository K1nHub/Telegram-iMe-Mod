package com.iMe.p031ui.base.mvp;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.MvpFragment$mvpBaseDelegate$2;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.base.mvp.base.MvpBaseDelegate;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.hints.HintUtils;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.MvpDelegateHolder;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
/* compiled from: MvpFragment.kt */
/* renamed from: com.iMe.ui.base.mvp.MvpFragment */
/* loaded from: classes3.dex */
public abstract class MvpFragment extends BaseFragment implements MvpDelegateHolder, KoinComponent, BaseView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(MvpFragment.class, "hintUtils", "getHintUtils()Lcom/iMe/utils/hints/HintUtils;", 0))};
    private final Lazy mvpBaseDelegate$delegate = LazyKt.lazy(new Function0<MvpFragment$mvpBaseDelegate$2.C20521>() { // from class: com.iMe.ui.base.mvp.MvpFragment$mvpBaseDelegate$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.iMe.ui.base.mvp.MvpFragment$mvpBaseDelegate$2$1] */
        @Override // kotlin.jvm.functions.Function0
        public final C20521 invoke() {
            return new MvpBaseDelegate<MvpFragment>() { // from class: com.iMe.ui.base.mvp.MvpFragment$mvpBaseDelegate$2.1
                private final Lazy context$delegate;

                {
                    Lazy lazy;
                    lazy = LazyKt__LazyJVMKt.lazy(new Function0<Activity>() { // from class: com.iMe.ui.base.mvp.MvpFragment$mvpBaseDelegate$2$1$context$2
                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final Activity invoke() {
                            return MvpFragment.this.getParentActivity();
                        }
                    });
                    this.context$delegate = lazy;
                }

                @Override // com.iMe.p031ui.base.mvp.base.BaseDelegate
                public Context getContext() {
                    Object value = this.context$delegate.getValue();
                    Intrinsics.checkNotNullExpressionValue(value, "<get-context>(...)");
                    return (Context) value;
                }

                @Override // com.iMe.p031ui.base.mvp.base.BaseDelegate
                public MvpDelegate<MvpFragment> createDelegate() {
                    return new MvpDelegate<>(MvpFragment.this);
                }
            };
        }
    });
    private final ResettableLazy hintUtils$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<HintUtils>() { // from class: com.iMe.ui.base.mvp.MvpFragment$hintUtils$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final HintUtils invoke() {
            return new HintUtils();
        }
    }, 1, (Object) null);
    private final CompositeDisposable subscriptions = new CompositeDisposable();

    public abstract View onCreateView(Context context);

    public abstract void onViewReady();

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void showErrorToast(Result.Error error, ResourceManager resourceManager) {
        BaseView.CC.$default$showErrorToast(this, error, resourceManager);
    }

    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    public final MvpBaseDelegate<MvpFragment> getMvpBaseDelegate() {
        return (MvpBaseDelegate) this.mvpBaseDelegate$delegate.getValue();
    }

    public final HintUtils getHintUtils() {
        return (HintUtils) this.hintUtils$delegate.getValue(this, $$delegatedProperties[0]);
    }

    public final void postViewActionDelayed(long j, final Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "action");
        getMvpBaseDelegate().getViewHandler().postDelayed(new Runnable() { // from class: com.iMe.ui.base.mvp.MvpFragment$$ExternalSyntheticLambda0
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onViewCreated() {
        onViewReady();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        super.onBecomeFullyHidden();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        getMvpBaseDelegate().onPause();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getMvpBaseDelegate().onResume();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onDestroyView() {
        getMvpBaseDelegate().onDestroyView();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        getHintUtils().hideHint();
        super.onTransitionAnimationStart(z, z2);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        this.subscriptions.clear();
        getMvpBaseDelegate().onDetachedFromWindow();
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void showToast(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (text.length() > 0) {
            ContextExtKt.longToast(text);
        }
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void finishScreen() {
        finishFragment();
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void removeSelfFromStackImmediately() {
        removeSelfFromStack(true);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void showLoadingDialog(boolean z, boolean z2, Disposable disposable) {
        getMvpBaseDelegate().showLoadingDialog(z, z2, disposable);
    }
}
