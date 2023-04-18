package com.iMe.p031ui.wallet.crypto.create.secret_words_count;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkSecretWordsCountLayoutBinding;
/* compiled from: SecretWordsCountBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountBottomSheetDialog */
/* loaded from: classes3.dex */
public final class SecretWordsCountBottomSheetDialog extends MvpBottomSheet implements SecretWordsCountView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SecretWordsCountBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(SecretWordsCountBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy actionAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private final Function1<Integer, Unit> onWordsCountSelected;
    private final Activity parentActivity;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SecretWordsCountBottomSheetDialog(Activity parentActivity, Function1<? super Integer, Unit> onWordsCountSelected) {
        super(parentActivity, true);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(parentActivity, "parentActivity");
        Intrinsics.checkNotNullParameter(onWordsCountSelected, "onWordsCountSelected");
        this.parentActivity = parentActivity;
        this.onWordsCountSelected = onWordsCountSelected;
        SecretWordsCountBottomSheetDialog$presenter$2 secretWordsCountBottomSheetDialog$presenter$2 = new SecretWordsCountBottomSheetDialog$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, SecretWordsCountPresenter.class.getName() + ".presenter", secretWordsCountBottomSheetDialog$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2118x593128cf(this, null, null));
        this.actionAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SecretWordsCountBottomSheetDialog$binding$2(this), 1, (Object) null);
        setApplyBottomPadding(false);
    }

    private final SecretWordsCountPresenter getPresenter() {
        return (SecretWordsCountPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final SecretWordsCountAdapter getActionAdapter() {
        return (SecretWordsCountAdapter) this.actionAdapter$delegate.getValue();
    }

    private final ForkSecretWordsCountLayoutBinding getBinding() {
        return (ForkSecretWordsCountLayoutBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setTexts();
        setupListeners();
        setupRecycleView();
        LinearLayout linearLayout = getBinding().root;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.root");
        return linearLayout;
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.secret_words_count.SecretWordsCountView
    public void setupAdapter(List<Integer> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        SecretWordsCountAdapter actionAdapter = getActionAdapter();
        actionAdapter.setNewInstance(items);
        actionAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SecretWordsCountBottomSheetDialog.setupAdapter$lambda$1$lambda$0(SecretWordsCountBottomSheetDialog.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupAdapter$lambda$1$lambda$0(SecretWordsCountBottomSheetDialog this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().onItemClicked(i);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.secret_words_count.SecretWordsCountView
    public void onItemSelected(int i) {
        this.onWordsCountSelected.invoke(Integer.valueOf(i));
        dismiss();
    }

    private final void setupColors() {
        setBackgroundColor(getThemedColor("windowBackgroundWhite"));
        ForkSecretWordsCountLayoutBinding binding = getBinding();
        AppCompatTextView setupColors$lambda$4$lambda$2 = binding.textTitle;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$2, "setupColors$lambda$4$lambda$2");
        ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$2);
        setupColors$lambda$4$lambda$2.setTextColor(getThemedColor("dialogTextBlue2"));
        AppCompatTextView setupColors$lambda$4$lambda$3 = binding.textActionCancel;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$3, "setupColors$lambda$4$lambda$3");
        ViewExtKt.setRippleBackground$default(setupColors$lambda$4$lambda$3, false, 1, null);
        ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$3);
        setupColors$lambda$4$lambda$3.setTextColor(getThemedColor("chats_actionBackground"));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleActions;
        recyclerView.setAdapter(getActionAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(this.parentActivity));
    }

    private final void setupListeners() {
        AppCompatTextView appCompatTextView = getBinding().textActionCancel;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "binding.textActionCancel");
        ViewExtKt.safeThrottledClick$default(appCompatTextView, 0L, new SecretWordsCountBottomSheetDialog$setupListeners$1(this), 1, null);
    }

    private final void setTexts() {
        getBinding().textTitle.setText(LocaleController.getInternalString(C3242R.string.wallet_import_change_words_count_dialog_title));
    }

    /* compiled from: SecretWordsCountBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SecretWordsCountBottomSheetDialog newInstance(Activity parentActivity, Function1<? super Integer, Unit> onWordsCountSelected) {
            Intrinsics.checkNotNullParameter(parentActivity, "parentActivity");
            Intrinsics.checkNotNullParameter(onWordsCountSelected, "onWordsCountSelected");
            return new SecretWordsCountBottomSheetDialog(parentActivity, onWordsCountSelected);
        }
    }
}
