package com.iMe.feature.socialMedias;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.databinding.ForkDialogSocialNetworksBinding;
import org.telegram.messenger.databinding.ForkDialogSocialNetworksItemBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: SocialDialog.kt */
/* loaded from: classes3.dex */
public final class SocialDialog extends MvpBottomSheet {
    public static final Companion Companion = new Companion(null);
    private final ForkDialogSocialNetworksBinding binding;
    private final Lazy resource$delegate;
    private int textColor;

    public static final SocialDialog newInstance(Context context, List<SocialNetwork> list, Function1<? super SocialNetwork, Unit> function1) {
        return Companion.newInstance(context, list, function1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialDialog(Context context) {
        super(context, false);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        ForkDialogSocialNetworksBinding inflate = ForkDialogSocialNetworksBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        this.textColor = Theme.getColor(Theme.key_chat_messagePanelText);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.feature.socialMedias.SocialDialog$special$$inlined$inject$default$1
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
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
        this.resource$delegate = lazy;
    }

    private final ResourceManager getResource() {
        return (ResourceManager) this.resource$delegate.getValue();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        this.binding.text.setTextColor(this.textColor);
        this.binding.text.setText(getResource().getString(C3558R.string.social_cell_social_networks));
        ConstraintLayout root = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    public final void updateData(List<SocialNetwork> items, Function1<? super SocialNetwork, Unit> onNetworkChosen) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(onNetworkChosen, "onNetworkChosen");
        this.binding.linearLayout.removeAllViews();
        for (SocialNetwork socialNetwork : items) {
            addItemToContainer(socialNetwork, onNetworkChosen);
        }
    }

    private final void addItemToContainer(final SocialNetwork socialNetwork, final Function1<? super SocialNetwork, Unit> function1) {
        ForkDialogSocialNetworksItemBinding inflate = ForkDialogSocialNetworksItemBinding.inflate(LayoutInflater.from(getContext()), this.binding.getRoot(), false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(inflater, binding.root, false)");
        inflate.text.setText(socialNetwork.getSocialName());
        inflate.text.setTextColor(this.textColor);
        ImageView icon = inflate.icon;
        Intrinsics.checkNotNullExpressionValue(icon, "icon");
        ImageViewExtKt.withGlide$default(icon, socialNetwork.getIcon(), null, null, 6, null);
        ConstraintLayout root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "root");
        ViewExtKt.safeThrottledClick$default(root, 0L, new Function1<View, Unit>() { // from class: com.iMe.feature.socialMedias.SocialDialog$addItemToContainer$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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
                function1.invoke(socialNetwork);
                Unit unit = Unit.INSTANCE;
                this.dismiss();
            }
        }, 1, null);
        this.binding.linearLayout.addView(inflate.getRoot());
    }

    /* compiled from: SocialDialog.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SocialDialog newInstance(Context context, List<SocialNetwork> allNonActiveNetworks, Function1<? super SocialNetwork, Unit> onAddButtonClick) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(allNonActiveNetworks, "allNonActiveNetworks");
            Intrinsics.checkNotNullParameter(onAddButtonClick, "onAddButtonClick");
            SocialDialog socialDialog = new SocialDialog(context);
            socialDialog.updateData(allNonActiveNetworks, onAddButtonClick);
            return socialDialog;
        }
    }
}
