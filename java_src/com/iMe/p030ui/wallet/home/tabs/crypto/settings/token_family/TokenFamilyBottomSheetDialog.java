package com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.p030ui.adapter.provider.FoundTokenProvider;
import com.iMe.p030ui.base.mvp.MvpBottomSheet;
import com.iMe.p030ui.wallet.home.tabs.crypto.settings.adapter.FoundTokensRecycleAdapter;
import com.iMe.p030ui.wallet.home.tabs.crypto.settings.adapter.diff.TokensSearchDiffCallback;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import java.util.List;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.databinding.ForkContentTokenFamilyBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TokenFamilyBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog */
/* loaded from: classes4.dex */
public final class TokenFamilyBottomSheetDialog extends MvpBottomSheet implements TokenFamilyView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(TokenFamilyBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(TokenFamilyBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy tokensRecycleAdapter$delegate;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return true;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithTouchOutside() {
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TokenFamilyBottomSheetDialog(final java.util.List<com.iMe.model.wallet.home.FoundTokenItem> r5, org.telegram.p043ui.ActionBar.BaseFragment r6) {
        /*
            r4 = this;
            java.lang.String r0 = "foundTokens"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.app.Activity r0 = r6.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r4.<init>(r0, r1)
            r4.fragment = r6
            com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$presenter$2 r6 = new com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$presenter$2
            r6.<init>()
            moxy.ktx.MoxyKtxDelegate r5 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r0 = r4.getMvpDelegate()
            java.lang.String r2 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class<com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter> r3 = com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter.class
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = "."
            r2.append(r3)
            java.lang.String r3 = "presenter"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r5.<init>(r0, r2, r6)
            r4.presenter$delegate = r5
            org.koin.mp.KoinPlatformTools r5 = org.koin.p041mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r6 = r5.defaultLazyMode()
            com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$special$$inlined$inject$default$1 r0 = new com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$special$$inlined$inject$default$1
            r2 = 0
            r0.<init>()
            kotlin.Lazy r6 = kotlin.LazyKt.lazy(r6, r0)
            r4.tokensRecycleAdapter$delegate = r6
            kotlin.LazyThreadSafetyMode r5 = r5.defaultLazyMode()
            com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$special$$inlined$inject$default$2 r6 = new com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$special$$inlined$inject$default$2
            r6.<init>()
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r6)
            r4.resourceManager$delegate = r5
            com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$binding$2 r5 = new com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$binding$2
            r5.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r5 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r4, r2, r5, r1, r2)
            r4.binding$delegate = r5
            r5 = 0
            r4.setApplyBottomPadding(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog.<init>(java.util.List, org.telegram.ui.ActionBar.BaseFragment):void");
    }

    private final TokenFamilyPresenter getPresenter() {
        return (TokenFamilyPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final FoundTokensRecycleAdapter getTokensRecycleAdapter() {
        return (FoundTokensRecycleAdapter) this.tokensRecycleAdapter$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentTokenFamilyBinding getBinding() {
        return (ForkContentTokenFamilyBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupRecyclerView();
        setupViews();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        getPresenter().onDismiss();
        super.dismiss();
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView
    public void setupScreenWithData(String titleText, List<BaseNode> foundTokens) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(foundTokens, "foundTokens");
        getBinding().textTitle.setText(titleText);
        getTokensRecycleAdapter().setNewInstance(foundTokens);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView
    public void renderData(List<BaseNode> foundTokens) {
        Intrinsics.checkNotNullParameter(foundTokens, "foundTokens");
        BaseQuickAdapter.setDiffNewData$default(getTokensRecycleAdapter(), foundTokens, null, 2, null);
    }

    private final void setupColors() {
        ForkContentTokenFamilyBinding binding = getBinding();
        TextView setupColors$lambda$2$lambda$0 = binding.textTitle;
        setupColors$lambda$2$lambda$0.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$2$lambda$0, "setupColors$lambda$2$lambda$0");
        ViewExtKt.withMediumTypeface(setupColors$lambda$2$lambda$0);
        binding.textDescription.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        binding.divider.setupColors();
        TextView setupColors$lambda$2$lambda$1 = binding.buttonDone;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$2$lambda$1, "setupColors$lambda$2$lambda$1");
        ViewExtKt.setRippleBackground$default(setupColors$lambda$2$lambda$1, false, 1, null);
        setupColors$lambda$2$lambda$1.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueText));
        ViewExtKt.withMediumTypeface(setupColors$lambda$2$lambda$1);
    }

    private final void setupViews() {
        ForkContentTokenFamilyBinding binding = getBinding();
        binding.textDescription.setText(getResourceManager().getString(C3632R.string.wallet_token_family_description));
        binding.buttonDone.setText(getResourceManager().getString(C3632R.string.wallet_backup_done));
    }

    private final void setupRecyclerView() {
        RecyclerView recyclerView = getBinding().recyclerTokens;
        FoundTokensRecycleAdapter tokensRecycleAdapter = getTokensRecycleAdapter();
        FoundTokenProvider foundTokenProvider = tokensRecycleAdapter.getFoundTokenProvider();
        foundTokenProvider.setTickerVisible(false);
        foundTokenProvider.setLastItemDividerVisible(false);
        tokensRecycleAdapter.setDiffCallback(new TokensSearchDiffCallback());
        recyclerView.setAdapter(tokensRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(this.fragment.getParentActivity()));
    }

    private final void setupListeners() {
        getTokensRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                TokenFamilyBottomSheetDialog.setupListeners$lambda$8(TokenFamilyBottomSheetDialog.this, baseQuickAdapter, view, i);
            }
        });
        TextView textView = getBinding().buttonDone;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.buttonDone");
        ViewExtKt.safeThrottledClick$default(textView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$setupListeners$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                TokenFamilyBottomSheetDialog.this.dismiss();
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$8(TokenFamilyBottomSheetDialog this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        Object item = adapter.getItem(i);
        if (item instanceof FoundTokenItem) {
            this$0.getPresenter().onTokenClicked((FoundTokenItem) item);
        }
    }

    /* compiled from: TokenFamilyBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TokenFamilyBottomSheetDialog newInstance(List<FoundTokenItem> foundTokens, BaseFragment fragment) {
            Intrinsics.checkNotNullParameter(foundTokens, "foundTokens");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            return new TokenFamilyBottomSheetDialog(foundTokens, fragment);
        }
    }
}
