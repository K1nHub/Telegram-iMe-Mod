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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.databinding.ForkDialogSocialNetworksBinding;
import org.telegram.messenger.databinding.ForkDialogSocialNetworksItemBinding;
import org.telegram.p044ui.ActionBar.Theme;
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new SocialDialog$special$$inlined$inject$default$1(this, null, null));
        this.resource$delegate = lazy;
    }

    private final ResourceManager getResource() {
        return (ResourceManager) this.resource$delegate.getValue();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        this.binding.text.setTextColor(this.textColor);
        this.binding.text.setText(getResource().getString(C3290R.string.social_cell_social_networks));
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

    private final void addItemToContainer(SocialNetwork socialNetwork, Function1<? super SocialNetwork, Unit> function1) {
        ForkDialogSocialNetworksItemBinding inflate = ForkDialogSocialNetworksItemBinding.inflate(LayoutInflater.from(getContext()), this.binding.getRoot(), false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(inflater, binding.root, false)");
        inflate.text.setText(socialNetwork.getSocialName());
        inflate.text.setTextColor(this.textColor);
        ImageView icon = inflate.icon;
        Intrinsics.checkNotNullExpressionValue(icon, "icon");
        ImageViewExtKt.withGlide$default(icon, socialNetwork.getIcon(), null, null, 6, null);
        ConstraintLayout root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "root");
        ViewExtKt.safeThrottledClick$default(root, 0L, new SocialDialog$addItemToContainer$1$1(function1, socialNetwork, this), 1, null);
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
