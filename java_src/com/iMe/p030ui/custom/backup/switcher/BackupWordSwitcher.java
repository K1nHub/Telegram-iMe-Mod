package com.iMe.p030ui.custom.backup.switcher;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewGroupKt;
import com.iMe.p030ui.base.mvp.view.MvpFrameLayout;
import com.iMe.p030ui.custom.backup.BackupWordView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import moxy.MvpDelegate;
import moxy.MvpView;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.java.KoinJavaComponent;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.databinding.ForkContentWordSwitcherBinding;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: BackupWordSwitcher.kt */
/* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher */
/* loaded from: classes3.dex */
public final class BackupWordSwitcher extends MvpFrameLayout implements KoinComponent, MvpView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(BackupWordSwitcher.class, "presenter", "getPresenter()Lcom/iMe/ui/custom/backup/switcher/BackupWordSwitcherPresenter;", 0))};
    private ForkContentWordSwitcherBinding binding;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private BackupWordView selectedBackupWordView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BackupWordSwitcher(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.iMe.p030ui.base.mvp.view.MvpFrameLayout, org.koin.core.component.KoinComponent
    public /* bridge */ /* synthetic */ Koin getKoin() {
        Koin koin;
        koin = KoinJavaComponent.getKoin();
        return koin;
    }

    @Override // com.iMe.p030ui.base.mvp.view.MvpFrameLayout, com.iMe.p030ui.base.mvp.view.ICustomMvpView, moxy.MvpDelegateHolder
    public /* bridge */ /* synthetic */ MvpDelegate<T> getMvpDelegate() {
        MvpDelegate<T> mMvpDelegate;
        mMvpDelegate = getMMvpDelegate();
        return mMvpDelegate;
    }

    public /* synthetic */ BackupWordSwitcher(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackupWordSwitcher(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Function0<BackupWordSwitcherPresenter> function0 = new Function0<BackupWordSwitcherPresenter>() { // from class: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final BackupWordSwitcherPresenter invoke() {
                Lazy lazy2;
                final BackupWordSwitcher backupWordSwitcher = BackupWordSwitcher.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<BackupWordSwitcherPresenter>() { // from class: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.custom.backup.switcher.BackupWordSwitcherPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final BackupWordSwitcherPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(BackupWordSwitcherPresenter.class), qualifier, function02);
                    }
                });
                return (BackupWordSwitcherPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, BackupWordSwitcherPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function02);
            }
        });
        this.resourceManager$delegate = lazy;
        ForkContentWordSwitcherBinding inflate = ForkContentWordSwitcherBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
        getMMvpDelegate().onCreate();
        MvpDelegate mvpDelegate2 = getMvpDelegate();
        if (mvpDelegate2 != null) {
            mvpDelegate2.onAttach();
        }
    }

    private final BackupWordSwitcherPresenter getPresenter() {
        return (BackupWordSwitcherPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void applyColors() {
        Sequence<BackupWordView> filter;
        ForkContentWordSwitcherBinding forkContentWordSwitcherBinding = this.binding;
        ConstraintLayout constraintLayout = forkContentWordSwitcherBinding.constraintWords;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(AndroidUtilities.m103dp(9.0f));
        gradientDrawable.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        gradientDrawable.setStroke(AndroidUtilities.m103dp(1.0f), Theme.getColor(Theme.key_chats_actionBackground));
        constraintLayout.setBackground(gradientDrawable);
        forkContentWordSwitcherBinding.textTitle.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        ConstraintLayout constraintWords = forkContentWordSwitcherBinding.constraintWords;
        Intrinsics.checkNotNullExpressionValue(constraintWords, "constraintWords");
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(constraintWords), new Function1<Object, Boolean>() { // from class: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher$applyColors$lambda$2$$inlined$filterIsInstance$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object obj) {
                return Boolean.valueOf(obj instanceof BackupWordView);
            }
        });
        Intrinsics.checkNotNull(filter, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>");
        for (BackupWordView backupWordView : filter) {
            backupWordView.applyColors();
        }
        BackupWordView backupWordView2 = this.selectedBackupWordView;
        if (backupWordView2 == null) {
            return;
        }
        backupWordView2.setChecked(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MvpDelegate mvpDelegate = getMvpDelegate();
        if (mvpDelegate != null) {
            mvpDelegate.onDetach();
        }
        MvpDelegate mvpDelegate2 = getMvpDelegate();
        if (mvpDelegate2 != null) {
            mvpDelegate2.onDestroyView();
        }
        MvpDelegate mvpDelegate3 = getMvpDelegate();
        if (mvpDelegate3 != null) {
            mvpDelegate3.onDestroy();
        }
    }

    public void setupTitle(int i) {
        this.binding.textTitle.setText(getResourceManager().getString(C3630R.string.wallet_eth_backup_confirm_word_description, Integer.valueOf(i)));
    }

    public void setupBackupWords(List<String> words) {
        Sequence filter;
        Intrinsics.checkNotNullParameter(words, "words");
        ConstraintLayout constraintLayout = this.binding.constraintWords;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.constraintWords");
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(constraintLayout), new Function1<Object, Boolean>() { // from class: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher$setupBackupWords$$inlined$filterIsInstance$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object obj) {
                return Boolean.valueOf(obj instanceof BackupWordView);
            }
        });
        Intrinsics.checkNotNull(filter, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>");
        int i = 0;
        for (Object obj : filter) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ((BackupWordView) obj).setWord(words.get(i));
            i = i2;
        }
    }

    private final void setupListenerFor(final BackupWordView backupWordView) {
        backupWordView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackupWordSwitcher.setupListenerFor$lambda$5$lambda$4(BackupWordSwitcher.this, backupWordView, backupWordView, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListenerFor$lambda$5$lambda$4(BackupWordSwitcher this$0, BackupWordView view, BackupWordView this_with, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        BackupWordView backupWordView = this$0.selectedBackupWordView;
        if (backupWordView != null && backupWordView != null) {
            backupWordView.setChecked(false);
        }
        this$0.selectedBackupWordView = view;
        this_with.setChecked(true);
    }

    private final void setupView() {
        applyColors();
        setupListeners();
        addView(this.binding.getRoot());
    }

    private final void setupListeners() {
        Sequence<BackupWordView> filter;
        ConstraintLayout constraintLayout = this.binding.constraintWords;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.constraintWords");
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(constraintLayout), new Function1<Object, Boolean>() { // from class: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher$setupListeners$$inlined$filterIsInstance$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object obj) {
                return Boolean.valueOf(obj instanceof BackupWordView);
            }
        });
        Intrinsics.checkNotNull(filter, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>");
        for (BackupWordView backupWordView : filter) {
            setupListenerFor(backupWordView);
        }
    }
}
