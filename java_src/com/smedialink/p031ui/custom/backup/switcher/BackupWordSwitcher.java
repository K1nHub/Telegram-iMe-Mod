package com.smedialink.p031ui.custom.backup.switcher;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewGroupKt;
import com.smedialink.p031ui.base.mvp.view.MvpFrameLayout;
import com.smedialink.p031ui.custom.backup.BackupWordView;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.databinding.ForkContentWordSwitcherBinding;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: BackupWordSwitcher.kt */
/* renamed from: com.smedialink.ui.custom.backup.switcher.BackupWordSwitcher */
/* loaded from: classes3.dex */
public final class BackupWordSwitcher extends MvpFrameLayout implements KoinComponent, BackupWordSwitcherMvpView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(BackupWordSwitcher.class, "presenter", "getPresenter()Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherPresenter;", 0))};
    private ForkContentWordSwitcherBinding binding;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private BackupWordView selectedBackupWordView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BackupWordSwitcher(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ BackupWordSwitcher(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackupWordSwitcher(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        BackupWordSwitcher$presenter$2 backupWordSwitcher$presenter$2 = new BackupWordSwitcher$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, BackupWordSwitcherPresenter.class.getName() + ".presenter", backupWordSwitcher$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new BackupWordSwitcher$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
        ForkContentWordSwitcherBinding inflate = ForkContentWordSwitcherBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
        getMMvpDelegate().onCreate();
        MvpDelegate<MvpFrameLayout> mvpDelegate2 = getMvpDelegate();
        if (mvpDelegate2 == null) {
            return;
        }
        mvpDelegate2.onAttach();
    }

    private final BackupWordSwitcherPresenter getPresenter() {
        return (BackupWordSwitcherPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void setSeed(List<String> seed, List<String> partOfSeed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(partOfSeed, "partOfSeed");
        getPresenter().setupWithSeed(seed, partOfSeed);
    }

    public final void applyColors() {
        Sequence<BackupWordView> filter;
        ForkContentWordSwitcherBinding forkContentWordSwitcherBinding = this.binding;
        ConstraintLayout constraintLayout = forkContentWordSwitcherBinding.constraintWords;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(AndroidUtilities.m51dp(9.0f));
        gradientDrawable.setColor(Theme.getColor("windowBackgroundWhite"));
        gradientDrawable.setStroke(AndroidUtilities.m51dp(1.0f), Theme.getColor("chats_actionBackground"));
        Unit unit = Unit.INSTANCE;
        constraintLayout.setBackground(gradientDrawable);
        forkContentWordSwitcherBinding.textTitle.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        ConstraintLayout constraintWords = forkContentWordSwitcherBinding.constraintWords;
        Intrinsics.checkNotNullExpressionValue(constraintWords, "constraintWords");
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(constraintWords), C1829xc55125e6.INSTANCE);
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
        MvpDelegate<MvpFrameLayout> mvpDelegate = getMvpDelegate();
        if (mvpDelegate != null) {
            mvpDelegate.onDetach();
        }
        MvpDelegate<MvpFrameLayout> mvpDelegate2 = getMvpDelegate();
        if (mvpDelegate2 != null) {
            mvpDelegate2.onDestroyView();
        }
        MvpDelegate<MvpFrameLayout> mvpDelegate3 = getMvpDelegate();
        if (mvpDelegate3 == null) {
            return;
        }
        mvpDelegate3.onDestroy();
    }

    @Override // com.smedialink.p031ui.custom.backup.switcher.BackupWordSwitcherMvpView
    public void setupTitle(int i) {
        this.binding.textTitle.setText(getResourceManager().getString(C3158R.string.wallet_eth_backup_confirm_word_description, Integer.valueOf(i)));
    }

    @Override // com.smedialink.p031ui.custom.backup.switcher.BackupWordSwitcherMvpView
    public void setupBackupWords(List<String> words) {
        Sequence filter;
        Intrinsics.checkNotNullParameter(words, "words");
        ConstraintLayout constraintLayout = this.binding.constraintWords;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.constraintWords");
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(constraintLayout), BackupWordSwitcher$setupBackupWords$$inlined$filterIsInstance$1.INSTANCE);
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
        backupWordView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.custom.backup.switcher.BackupWordSwitcher$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackupWordSwitcher.m1452setupListenerFor$lambda5$lambda4(BackupWordSwitcher.this, backupWordView, backupWordView, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupListenerFor$lambda-5$lambda-4  reason: not valid java name */
    public static final void m1452setupListenerFor$lambda5$lambda4(BackupWordSwitcher this$0, BackupWordView view, BackupWordView this_with, View view2) {
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
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(constraintLayout), BackupWordSwitcher$setupListeners$$inlined$filterIsInstance$1.INSTANCE);
        for (BackupWordView backupWordView : filter) {
            setupListenerFor(backupWordView);
        }
    }
}
