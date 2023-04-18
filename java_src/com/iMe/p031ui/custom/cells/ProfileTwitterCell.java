package com.iMe.p031ui.custom.cells;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.twitter.TwitterAccountStatus;
import com.iMe.p031ui.custom.SmallActionButton;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.Cells.TextDetailCell;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: ProfileTwitterCell.kt */
/* renamed from: com.iMe.ui.custom.cells.ProfileTwitterCell */
/* loaded from: classes3.dex */
public final class ProfileTwitterCell extends TextDetailCell implements KoinComponent {
    private final Lazy buttonAdd$delegate;
    private final Lazy imageView$delegate;
    private final Lazy resourceManager$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileTwitterCell(Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new ProfileTwitterCell$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new ProfileTwitterCell$buttonAdd$2(this));
        this.buttonAdd$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new ProfileTwitterCell$imageView$2(this));
        this.imageView$delegate = lazy3;
        addView(getButtonAdd(), createLayoutParams());
        addView(getImageView(), createLayoutParams());
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final SmallActionButton getButtonAdd() {
        return (SmallActionButton) this.buttonAdd$delegate.getValue();
    }

    private final AppCompatImageView getImageView() {
        return (AppCompatImageView) this.imageView$delegate.getValue();
    }

    public final void setButtonClickListener(Callbacks$Callback onButtonAddClickAction) {
        Intrinsics.checkNotNullParameter(onButtonAddClickAction, "onButtonAddClickAction");
        ViewExtKt.safeThrottledClick$default(getButtonAdd(), 0L, new ProfileTwitterCell$setButtonClickListener$1(onButtonAddClickAction), 1, null);
    }

    public final void setupWithTwitterStatus(TwitterAccountStatus twitterAccountStatus) {
        Intrinsics.checkNotNullParameter(twitterAccountStatus, "twitterAccountStatus");
        if (twitterAccountStatus instanceof TwitterAccountStatus.Active) {
            setTextAndValue('@' + ((TwitterAccountStatus.Active) twitterAccountStatus).getNickname(), getResourceManager().getString(C3242R.string.drawer_social_network_twitter), false);
            ViewExtKt.gone(getButtonAdd());
            AppCompatImageView imageView = getImageView();
            ViewExtKt.visible(imageView);
            imageView.setImageResource(C3242R.C3244drawable.fork_drawer_social_twitter);
            ViewExtKt.setImageColor(imageView, getResourceManager().getColor(C3242R.C3243color.twitter));
        } else if (twitterAccountStatus instanceof TwitterAccountStatus.Error) {
            setTextAndValue('@' + ((TwitterAccountStatus.Error) twitterAccountStatus).getNickname(), getResourceManager().getString(C3242R.string.drawer_social_network_twitter), false);
            ViewExtKt.gone(getButtonAdd());
            AppCompatImageView imageView2 = getImageView();
            ViewExtKt.visible(imageView2);
            imageView2.setImageResource(C3242R.C3244drawable.msg_report);
            ViewExtKt.setImageColor(imageView2, getResourceManager().getColor(C3242R.C3243color.common_red));
        } else if (Intrinsics.areEqual(twitterAccountStatus, TwitterAccountStatus.None.INSTANCE)) {
            setTextAndValue(getResourceManager().getString(C3242R.string.profile_twitter_not_connected), getResourceManager().getString(C3242R.string.drawer_social_network_twitter), false);
            ViewExtKt.gone(getImageView());
            ViewExtKt.visible(getButtonAdd());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SmallActionButton createAddButton() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        SmallActionButton smallActionButton = new SmallActionButton(context, null, 0, 6, null);
        smallActionButton.setText(LocaleController.getString("Add", C3242R.string.Add));
        ViewExtKt.gone(smallActionButton);
        return smallActionButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCompatImageView createImageView() {
        AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
        ViewExtKt.gone(appCompatImageView);
        return appCompatImageView;
    }

    private final FrameLayout.LayoutParams createLayoutParams() {
        FrameLayout.LayoutParams createFrame = LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 3 : 5) | 16, 23, 0, 23, 0);
        Intrinsics.checkNotNullExpressionValue(createFrame, "createFrame(\n           …IN, VERTICAL_MARGIN\n    )");
        return createFrame;
    }

    /* compiled from: ProfileTwitterCell.kt */
    /* renamed from: com.iMe.ui.custom.cells.ProfileTwitterCell$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
