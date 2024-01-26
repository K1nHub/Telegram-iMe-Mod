package com.iMe.p030ui.wallet.cryptobox.statuses_description;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.p030ui.base.mvp.MvpBottomSheet;
import com.iMe.p030ui.custom.BigActionButton;
import com.iMe.p030ui.wallet.cryptobox.statuses_description.adapter.CryptoBoxStatusInfoRecycleAdapter;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxStatus;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.databinding.ForkContentCryptoboxStatusInfoBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CryptoBoxStatusInfoBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoBottomSheetDialog */
/* loaded from: classes4.dex */
public final class CryptoBoxStatusInfoBottomSheetDialog extends MvpBottomSheet implements CryptoBoxStatusInfoView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CryptoBoxStatusInfoBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CryptoBoxStatusInfoBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy statusInfoAdapter$delegate;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoBoxStatusInfoBottomSheetDialog(final Activity parentActivity) {
        super(parentActivity, true);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(parentActivity, "parentActivity");
        Function0<CryptoBoxStatusInfoPresenter> function0 = new Function0<CryptoBoxStatusInfoPresenter>() { // from class: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoBottomSheetDialog$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CryptoBoxStatusInfoPresenter invoke() {
                Lazy lazy3;
                final CryptoBoxStatusInfoBottomSheetDialog cryptoBoxStatusInfoBottomSheetDialog = CryptoBoxStatusInfoBottomSheetDialog.this;
                lazy3 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CryptoBoxStatusInfoPresenter>() { // from class: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoBottomSheetDialog$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CryptoBoxStatusInfoPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(CryptoBoxStatusInfoPresenter.class), qualifier, function02);
                    }
                });
                return (CryptoBoxStatusInfoPresenter) lazy3.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        new MoxyKtxDelegate(mvpDelegate, CryptoBoxStatusInfoPresenter.class.getName() + ".presenter", function0);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoBottomSheetDialog$special$$inlined$inject$default$1
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
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<CryptoBoxStatusInfoRecycleAdapter>() { // from class: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoBottomSheetDialog$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.cryptobox.statuses_description.adapter.CryptoBoxStatusInfoRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CryptoBoxStatusInfoRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CryptoBoxStatusInfoRecycleAdapter.class), qualifier, function02);
            }
        });
        this.statusInfoAdapter$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkContentCryptoboxStatusInfoBinding>() { // from class: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoBottomSheetDialog$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkContentCryptoboxStatusInfoBinding invoke() {
                return ForkContentCryptoboxStatusInfoBinding.inflate(LayoutInflater.from(parentActivity));
            }
        }, 1, (Object) null);
        setApplyBottomPadding(false);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final CryptoBoxStatusInfoRecycleAdapter getStatusInfoAdapter() {
        return (CryptoBoxStatusInfoRecycleAdapter) this.statusInfoAdapter$delegate.getValue();
    }

    private final ForkContentCryptoboxStatusInfoBinding getBinding() {
        return (ForkContentCryptoboxStatusInfoBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupViews();
        setupColors();
        setupListeners();
        setupRecyclerView();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoView
    public void renderItems(List<CryptoBoxStatus> statuses) {
        Intrinsics.checkNotNullParameter(statuses, "statuses");
        getStatusInfoAdapter().setNewInstance(statuses);
    }

    private final void setupViews() {
        ForkContentCryptoboxStatusInfoBinding binding = getBinding();
        binding.textTitle.setText(getResourceManager().getString(C3632R.string.cryptobox_status_info_title));
        binding.buttonOk.setText(getResourceManager().getString(C3632R.string.common_ok));
    }

    private final void setupColors() {
        ForkContentCryptoboxStatusInfoBinding binding = getBinding();
        AppCompatTextView setupColors$lambda$2$lambda$1 = binding.textTitle;
        setupColors$lambda$2$lambda$1.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$2$lambda$1, "setupColors$lambda$2$lambda$1");
        ViewExtKt.withMediumTypeface(setupColors$lambda$2$lambda$1);
        binding.buttonOk.applyColors();
    }

    private final void setupListeners() {
        BigActionButton bigActionButton = getBinding().buttonOk;
        Intrinsics.checkNotNullExpressionValue(bigActionButton, "binding.buttonOk");
        ViewExtKt.safeThrottledClick$default(bigActionButton, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoBottomSheetDialog$setupListeners$1
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
                CryptoBoxStatusInfoBottomSheetDialog.this.dismiss();
            }
        }, 1, null);
    }

    private final void setupRecyclerView() {
        RecyclerView recyclerView = getBinding().recyclerStatuses;
        recyclerView.setAdapter(getStatusInfoAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
    }

    /* compiled from: CryptoBoxStatusInfoBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoBottomSheetDialog$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CryptoBoxStatusInfoBottomSheetDialog newInstance(Activity parentActivity) {
            Intrinsics.checkNotNullParameter(parentActivity, "parentActivity");
            return new CryptoBoxStatusInfoBottomSheetDialog(parentActivity);
        }
    }
}
