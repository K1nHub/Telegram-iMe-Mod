package com.iMe.fork.p023ui.fragment;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Property;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p023ui.fragment.CreateReactionButtonsActivity;
import com.iMe.fork.p023ui.view.MovingReactionCell;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.reaction.ReactionButtonsRowsType;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.p030ui.reaction.ReactionPresenter;
import com.iMe.p030ui.reaction.ReactionView;
import com.iMe.storage.data.network.model.request.reaction.UrlButton;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.RadioColorCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.EmojiView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RadialProgress;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.TrendingStickersLayout;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
/* compiled from: CreateReactionButtonsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity */
/* loaded from: classes3.dex */
public final class CreateReactionButtonsActivity extends MvpFragment implements ReactionView, NotificationCenter.NotificationCenterDelegate {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "presenter", "getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "emojiView", "getEmojiView()Lorg/telegram/ui/Components/EmojiView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "uploadView", "getUploadView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "uploadCircleView", "getUploadCircleView()Landroid/view/View;", 0)), Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "uploadProgressTextView", "getUploadProgressTextView()Landroid/widget/TextView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "uploadTextView", "getUploadTextView()Landroid/widget/TextView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateReactionButtonsActivity.class, "uploadProgressBar", "getUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;", 0))};
    private final String attachedFile;
    private UrlButton[] buttons;
    private int buttonsAddRow;
    private int buttonsCount;
    private int buttonsEndRow;
    private int buttonsHeaderRow;
    private ReactionButtonsRowsType buttonsRowsType;
    private int buttonsSectionRow;
    private int buttonsStartRow;
    private int currentHeight;
    private final ReactionDelegate delegate;
    private final long dialogId;
    private ActionBarMenuItem doneItem;
    private final ResettableLazy emojiView$delegate;
    private AnimatorSet emojiViewAnimator;
    private int keyboardHeight;
    private int keyboardHeightLand;
    private final ResettableLazy listAdapter$delegate;
    private final ResettableLazy listView$delegate;
    private final MessageObject messageObject;
    private final String messageText;
    private final MoxyKtxDelegate presenter$delegate;
    private int reactionHeaderRow;
    private ArrayList<String> reactions;
    private int reactionsAddRow;
    private int reactionsEndRow;
    private int reactionsSectionRow;
    private int reactionsStartRow;
    private final MessageObject replyMessageObject;
    private int requestFieldFocusAtPosition;
    private final Lazy resourceManager$delegate;
    private final ResettableLazy rootView$delegate;
    private int rowCount;
    private int settingsButtonRowsTypeRow;
    private int settingsHeaderRow;
    private boolean showEmojiView;
    private final ResettableLazy uploadCircleView$delegate;
    private final ResettableLazy uploadProgressBar$delegate;
    private final ResettableLazy uploadProgressTextView$delegate;
    private final ResettableLazy uploadTextView$delegate;
    private final ResettableLazy uploadView$delegate;

    /* compiled from: CreateReactionButtonsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$ColumnType */
    /* loaded from: classes3.dex */
    public enum ColumnType {
        EMOJI,
        BUTTON
    }

    /* compiled from: CreateReactionButtonsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$ReactionDelegate */
    /* loaded from: classes3.dex */
    public interface ReactionDelegate {
        void clearChat();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public CreateReactionButtonsActivity(long j, String messageText, String str, MessageObject messageObject, MessageObject messageObject2, ReactionDelegate reactionDelegate) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(messageText, "messageText");
        this.dialogId = j;
        this.messageText = messageText;
        this.attachedFile = str;
        this.messageObject = messageObject;
        this.replyMessageObject = messageObject2;
        this.delegate = reactionDelegate;
        Function0<ReactionPresenter> function0 = new Function0<ReactionPresenter>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ReactionPresenter invoke() {
                Lazy lazy2;
                final CreateReactionButtonsActivity createReactionButtonsActivity = CreateReactionButtonsActivity.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        long j2;
                        j2 = CreateReactionButtonsActivity.this.dialogId;
                        return ParametersHolderKt.parametersOf(Long.valueOf(j2));
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ReactionPresenter>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.reaction.ReactionPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final ReactionPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(ReactionPresenter.class), qualifier, function03);
                    }
                });
                return (ReactionPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, ReactionPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$special$$inlined$inject$default$1
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
        this.rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$rootView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout initRootView;
                initRootView = CreateReactionButtonsActivity.this.initRootView();
                return initRootView;
            }
        }, 1, (Object) null);
        this.listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = CreateReactionButtonsActivity.this.initListView();
                return initListView;
            }
        }, 1, (Object) null);
        this.listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreateReactionButtonsActivity.ListAdapter invoke() {
                ResourceManager resourceManager;
                CreateReactionButtonsActivity createReactionButtonsActivity = CreateReactionButtonsActivity.this;
                resourceManager = createReactionButtonsActivity.getResourceManager();
                return new CreateReactionButtonsActivity.ListAdapter(createReactionButtonsActivity, resourceManager);
            }
        }, 1, (Object) null);
        this.emojiView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<EmojiView>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$emojiView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final EmojiView invoke() {
                EmojiView initEmojiView;
                initEmojiView = CreateReactionButtonsActivity.this.initEmojiView();
                return initEmojiView;
            }
        }, 1, (Object) null);
        this.uploadView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<CreateReactionButtonsActivity$initProgressView$1>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$uploadView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreateReactionButtonsActivity$initProgressView$1 invoke() {
                CreateReactionButtonsActivity$initProgressView$1 initProgressView;
                initProgressView = CreateReactionButtonsActivity.this.initProgressView();
                return initProgressView;
            }
        }, 1, (Object) null);
        this.uploadCircleView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<View>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$uploadCircleView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initProgressCircleView;
                initProgressCircleView = CreateReactionButtonsActivity.this.initProgressCircleView();
                return initProgressCircleView;
            }
        }, 1, (Object) null);
        this.uploadProgressTextView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<TextView>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$uploadProgressTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView uploadProgressTextView;
                uploadProgressTextView = CreateReactionButtonsActivity.this.uploadProgressTextView();
                return uploadProgressTextView;
            }
        }, 1, (Object) null);
        this.uploadTextView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<TextView>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$uploadTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initUploadTextView;
                initUploadTextView = CreateReactionButtonsActivity.this.initUploadTextView();
                return initUploadTextView;
            }
        }, 1, (Object) null);
        this.uploadProgressBar$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RadialProgress>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$uploadProgressBar$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RadialProgress invoke() {
                RadialProgress initUploadProgressBar;
                initUploadProgressBar = CreateReactionButtonsActivity.this.initUploadProgressBar();
                return initUploadProgressBar;
            }
        }, 1, (Object) null);
        this.reactions = new ArrayList<>();
        this.buttons = new UrlButton[12];
        this.buttonsRowsType = ReactionButtonsRowsType.SINGLE;
        this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.m108dp(200.0f));
        this.keyboardHeightLand = MessagesController.getGlobalEmojiSettings().getInt("kbd_height_land3", AndroidUtilities.m108dp(200.0f));
    }

    static {
        new Companion(null);
    }

    private final ReactionPresenter getPresenter() {
        return (ReactionPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue(this, $$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue(this, $$delegatedProperties[2]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue(this, $$delegatedProperties[3]);
    }

    private final EmojiView getEmojiView() {
        return (EmojiView) this.emojiView$delegate.getValue(this, $$delegatedProperties[4]);
    }

    private final FrameLayout getUploadView() {
        return (FrameLayout) this.uploadView$delegate.getValue(this, $$delegatedProperties[5]);
    }

    private final View getUploadCircleView() {
        return (View) this.uploadCircleView$delegate.getValue(this, $$delegatedProperties[6]);
    }

    private final TextView getUploadProgressTextView() {
        return (TextView) this.uploadProgressTextView$delegate.getValue(this, $$delegatedProperties[7]);
    }

    private final TextView getUploadTextView() {
        return (TextView) this.uploadTextView$delegate.getValue(this, $$delegatedProperties[8]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RadialProgress getUploadProgressBar() {
        return (RadialProgress) this.uploadProgressBar$delegate.getValue(this, $$delegatedProperties[9]);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter notificationCenter = getNotificationCenter();
        notificationCenter.addObserver(this, NotificationCenter.fileUploadProgressChanged);
        notificationCenter.addObserver(this, NotificationCenter.fileNewChunkAvailable);
        notificationCenter.addObserver(this, NotificationCenter.fileUploaded);
        notificationCenter.addObserver(this, NotificationCenter.filePreparingStarted);
        return super.onFragmentCreate();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter notificationCenter = getNotificationCenter();
        notificationCenter.removeObserver(this, NotificationCenter.fileUploadProgressChanged);
        notificationCenter.removeObserver(this, NotificationCenter.fileNewChunkAvailable);
        notificationCenter.removeObserver(this, NotificationCenter.fileUploaded);
        notificationCenter.removeObserver(this, NotificationCenter.filePreparingStarted);
        getPresenter().cancelSendingMessage(this.messageObject);
        AnimatorSet animatorSet = this.emojiViewAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        rootView.addView(getEmojiView());
        rootView.addView(getUploadView());
        return rootView;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (this.showEmojiView) {
            showEmojiView$default(this, false, null, 2, null);
        } else {
            finishFragment();
        }
        return false;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        TLRPC$Message tLRPC$Message;
        TLRPC$Message tLRPC$Message2;
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.emojiLoaded) {
            getEmojiView().invalidateViews();
            return;
        }
        String str = null;
        if (i == NotificationCenter.fileUploadProgressChanged) {
            Object obj = args[0];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj;
            MessageObject messageObject = this.messageObject;
            if (messageObject != null && (tLRPC$Message2 = messageObject.messageOwner) != null) {
                str = tLRPC$Message2.attachPath;
            }
            if (Intrinsics.areEqual(str, str2)) {
                Object obj2 = args[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Long");
                long longValue = ((Long) obj2).longValue();
                Object obj3 = args[2];
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Long");
                updateProgressValue(longValue, ((Long) obj3).longValue());
            }
        } else if (i == NotificationCenter.fileUploaded) {
            Object obj4 = args[0];
            Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.String");
            String str3 = (String) obj4;
            MessageObject messageObject2 = this.messageObject;
            if (Intrinsics.areEqual((messageObject2 == null || (tLRPC$Message = messageObject2.messageOwner) == null) ? null : tLRPC$Message.attachPath, str3)) {
                ViewExtKt.invisible$default(getUploadView(), false, 1, null);
            }
        }
    }

    @Override // com.iMe.p030ui.reaction.ReactionView
    public void showButtonPositionDialog(ReactionButtonsRowsType buttonPosition) {
        Intrinsics.checkNotNullParameter(buttonPosition, "buttonPosition");
        showEmojiView$default(this, false, null, 2, null);
        final AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(getResourceManager().getString(C3632R.string.chat_reaction_button_position));
        builder.setNegativeButton(getResourceManager().getString(C3632R.string.common_cancel), null);
        LinearLayout linearLayout = new LinearLayout(getParentActivity());
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        ReactionButtonsRowsType[] values = ReactionButtonsRowsType.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            ReactionButtonsRowsType reactionButtonsRowsType = values[i];
            RadioColorCell radioColorCell = new RadioColorCell(getParentActivity());
            radioColorCell.setPadding(AndroidUtilities.m108dp(4.0f), 0, AndroidUtilities.m108dp(4.0f), 0);
            radioColorCell.setTag(Integer.valueOf(reactionButtonsRowsType.ordinal()));
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue(getResourceManager().getString(reactionButtonsRowsType.getResource()), buttonPosition == reactionButtonsRowsType);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CreateReactionButtonsActivity.showButtonPositionDialog$lambda$6$lambda$5(CreateReactionButtonsActivity.this, builder, view);
                }
            });
            linearLayout.addView(radioColorCell);
        }
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showButtonPositionDialog$lambda$6$lambda$5(CreateReactionButtonsActivity this$0, AlertDialog.Builder this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(view, "view");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        this$0.getPresenter().setButtonsRowType(ReactionButtonsRowsType.values()[((Integer) tag).intValue()]);
        this$0.buttonsRowsType = this$0.getPresenter().getButtonsRowType();
        this$0.getListAdapter().notifyItemChanged(this$0.settingsButtonRowsTypeRow);
        this_apply.getDismissRunnable().run();
    }

    @Override // com.iMe.p030ui.reaction.ReactionView
    public void onUrlValid(int i, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        dismissCurrentDialog();
        getListAdapter().addUrlAddress(i, url);
        AndroidUtilities.hideKeyboard(getRootView());
    }

    @Override // com.iMe.p030ui.reaction.ReactionView
    public void messageCreated() {
        finishFragment();
        ReactionDelegate reactionDelegate = this.delegate;
        if (reactionDelegate != null) {
            reactionDelegate.clearChat();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        RecyclerListView listView = getListView();
        int i = ThemeDescription.FLAG_LISTGLOWCOLOR;
        int i2 = Theme.key_dialogScrollGlow;
        int i3 = Theme.key_windowBackgroundWhiteGrayIcon;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        int i5 = Theme.key_windowBackgroundWhite;
        int i6 = Theme.key_windowBackgroundGray;
        int i7 = Theme.key_windowBackgroundWhiteBlueHeader;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(listView, i, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{MovingReactionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteHintText), new ThemeDescription(getListView(), ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{MovingReactionCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2), new ThemeDescription(getListView(), ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{MovingReactionCell.class}, new String[]{"deleteImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{MovingReactionCell.class}, new String[]{"moveImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{MovingReactionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{MovingReactionCell.class}, null, null, null, i5), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i6), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class}, null, null, null, i5), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText4), new ThemeDescription(getListView(), 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCell.class}, null, null, null, i5), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class}, null, null, null, i5), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i6), new ThemeDescription(getListView(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getListView(), ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7), new ThemeDescription(getRootView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{FrameLayout.class}, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CreateReactionButtonsActivity.getThemeDescriptions$lambda$7(CreateReactionButtonsActivity.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, i6));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$7(CreateReactionButtonsActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getEmojiView().updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initRootView() {
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setLayoutManager(new LinearLayoutManager(getParentActivity(), 1, false));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                CreateReactionButtonsActivity.initListView$lambda$10$lambda$9(CreateReactionButtonsActivity.this, view, i);
            }
        });
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(recyclerListView);
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$10$lambda$9(CreateReactionButtonsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getUploadView().getVisibility() == 0) {
            return;
        }
        if (i == this$0.reactionsAddRow) {
            showEmojiView$default(this$0, !this$0.showEmojiView, null, 2, null);
        } else if (i == this$0.buttonsAddRow) {
            this$0.getListAdapter().addUrlButton();
        } else if (i == this$0.settingsButtonRowsTypeRow) {
            this$0.getPresenter().getButtonLines();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EmojiView initEmojiView() {
        EmojiView emojiView = new EmojiView(this, false, false, false, getParentActivity(), false, null, null, true, null, false);
        Point point = AndroidUtilities.displaySize;
        this.currentHeight = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
        FrameLayout.LayoutParams createFrame = LayoutHelper.createFrame(-2, -2, 80);
        createFrame.width = AndroidUtilities.displaySize.x;
        createFrame.height = this.currentHeight;
        emojiView.setLayoutParams(createFrame);
        showEmojiView(false, emojiView);
        emojiView.setDelegate(new EmojiView.EmojiViewDelegate() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$initEmojiView$1$2
            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ boolean canSchedule() {
                return EmojiView.EmojiViewDelegate.CC.$default$canSchedule(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
                EmojiView.EmojiViewDelegate.CC.$default$editAnimatedSticker(this, tLRPC$Document, rLottieDrawable, z);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
                EmojiView.EmojiViewDelegate.CC.$default$editMedia(this, tLRPC$Document, z);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ long getDialogId() {
                return EmojiView.EmojiViewDelegate.CC.$default$getDialogId(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ float getProgressToSearchOpened() {
                float f;
                f = BitmapDescriptorFactory.HUE_RED;
                return f;
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ int getThreadId() {
                return EmojiView.EmojiViewDelegate.CC.$default$getThreadId(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void invalidateEnterView() {
                EmojiView.EmojiViewDelegate.CC.$default$invalidateEnterView(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ boolean isExpanded() {
                return EmojiView.EmojiViewDelegate.CC.$default$isExpanded(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ boolean isInScheduleMode() {
                return EmojiView.EmojiViewDelegate.CC.$default$isInScheduleMode(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ boolean isSearchOpened() {
                return EmojiView.EmojiViewDelegate.CC.$default$isSearchOpened(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ boolean isStoryReply() {
                return EmojiView.EmojiViewDelegate.CC.$default$isStoryReply(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ boolean isUserSelf() {
                return EmojiView.EmojiViewDelegate.CC.$default$isUserSelf(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onAnimatedEmojiUnlockClick() {
                EmojiView.EmojiViewDelegate.CC.$default$onAnimatedEmojiUnlockClick(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ boolean onBackspace() {
                return EmojiView.EmojiViewDelegate.CC.$default$onBackspace(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onClearEmojiRecent() {
                EmojiView.EmojiViewDelegate.CC.$default$onClearEmojiRecent(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onCustomEmojiSelected(long j, TLRPC$Document tLRPC$Document, String str, boolean z) {
                EmojiView.EmojiViewDelegate.CC.$default$onCustomEmojiSelected(this, j, tLRPC$Document, str, z);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onEmojiSettingsClick(ArrayList arrayList) {
                EmojiView.EmojiViewDelegate.CC.$default$onEmojiSettingsClick(this, arrayList);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onGifSelected(View view, Object obj, String str, Object obj2, boolean z, int i, String str2) {
                EmojiView.EmojiViewDelegate.CC.$default$onGifSelected(this, view, obj, str, obj2, z, i, str2);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onKiklikoVideoSelected(String str, boolean z, boolean z2, int i, String str2) {
                EmojiView.EmojiViewDelegate.CC.$default$onKiklikoVideoSelected(this, str, z, z2, i, str2);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onSearchOpenClose(int i) {
                EmojiView.EmojiViewDelegate.CC.$default$onSearchOpenClose(this, i);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onShowStickerSet(TLRPC$StickerSet tLRPC$StickerSet, TLRPC$InputStickerSet tLRPC$InputStickerSet) {
                EmojiView.EmojiViewDelegate.CC.$default$onShowStickerSet(this, tLRPC$StickerSet, tLRPC$InputStickerSet);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onStickerSelected(View view, TLRPC$Document tLRPC$Document, String str, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, String str2) {
                EmojiView.EmojiViewDelegate.CC.$default$onStickerSelected(this, view, tLRPC$Document, str, obj, sendAnimationData, z, i, str2);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onStickerSetAdd(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
                EmojiView.EmojiViewDelegate.CC.$default$onStickerSetAdd(this, tLRPC$StickerSetCovered);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onStickerSetRemove(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
                EmojiView.EmojiViewDelegate.CC.$default$onStickerSetRemove(this, tLRPC$StickerSetCovered);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onStickersGroupClick(long j) {
                EmojiView.EmojiViewDelegate.CC.$default$onStickersGroupClick(this, j);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onStickersSettingsClick() {
                EmojiView.EmojiViewDelegate.CC.$default$onStickersSettingsClick(this);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void onTabOpened(int i) {
                EmojiView.EmojiViewDelegate.CC.$default$onTabOpened(this, i);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void setKiklikoAvatar(String str) {
                EmojiView.EmojiViewDelegate.CC.$default$setKiklikoAvatar(this, str);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void showKiklikoReportAlert(String str, Callbacks$Callback1 callbacks$Callback1) {
                EmojiView.EmojiViewDelegate.CC.$default$showKiklikoReportAlert(this, str, callbacks$Callback1);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public /* synthetic */ void showTrendingStickersAlert(TrendingStickersLayout trendingStickersLayout) {
                EmojiView.EmojiViewDelegate.CC.$default$showTrendingStickersAlert(this, trendingStickersLayout);
            }

            @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
            public void onEmojiSelected(String str) {
                boolean z;
                if (str == null) {
                    return;
                }
                CreateReactionButtonsActivity.this.getListAdapter().addEmoji(str);
                CreateReactionButtonsActivity createReactionButtonsActivity = CreateReactionButtonsActivity.this;
                z = createReactionButtonsActivity.showEmojiView;
                CreateReactionButtonsActivity.showEmojiView$default(createReactionButtonsActivity, !z, null, 2, null);
            }
        });
        return emojiView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.widget.FrameLayout, android.view.View, com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$initProgressView$1] */
    public final CreateReactionButtonsActivity$initProgressView$1 initProgressView() {
        final Activity parentActivity = getParentActivity();
        ?? r1 = new FrameLayout(parentActivity) { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$initProgressView$1
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                RadialProgress uploadProgressBar;
                super.onDraw(canvas);
                uploadProgressBar = CreateReactionButtonsActivity.this.getUploadProgressBar();
                uploadProgressBar.draw(canvas);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                RadialProgress uploadProgressBar;
                super.onLayout(z, i, i2, i3, i4);
                int m108dp = AndroidUtilities.m108dp(45.0f);
                int i5 = ((i3 - i) - m108dp) / 2;
                int i6 = ((i4 - i2) - m108dp) / 2;
                uploadProgressBar = CreateReactionButtonsActivity.this.getUploadProgressBar();
                uploadProgressBar.setProgressRect(i5, i6, i5 + m108dp, m108dp + i6);
            }
        };
        ViewExtKt.invisible$default(r1, false, 1, null);
        r1.setLayoutParams(LayoutHelper.createFrame(-1, -1.0f));
        r1.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        r1.addView(getUploadCircleView(), LayoutHelper.createFrame(45, 45, 17));
        r1.addView(getUploadProgressTextView(), LayoutHelper.createFrame(-2, -2.0f, 17, (float) BitmapDescriptorFactory.HUE_RED, 35.0f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
        r1.addView(getUploadTextView(), LayoutHelper.createFrame(-2, -2.0f, 17, (float) BitmapDescriptorFactory.HUE_RED, 55.0f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
        return r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View initProgressCircleView() {
        View view = new View(getParentActivity());
        view.setBackground(Theme.createServiceDrawable(AndroidUtilities.m108dp(18.0f), view, this.fragmentView));
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView uploadProgressTextView() {
        TextView textView = new TextView(getParentActivity());
        textView.setTextSize(1, 13.0f);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initUploadTextView() {
        TextView textView = new TextView(getParentActivity());
        textView.setText(getResourceManager().getString(C3632R.string.chat_reaction_text_loader));
        textView.setTextSize(1, 16.0f);
        textView.setTextSize(1, 16.0f);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RadialProgress initUploadProgressBar() {
        RadialProgress radialProgress = new RadialProgress(getUploadView());
        radialProgress.setProgress(1.0f, true);
        radialProgress.setProgressColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
        radialProgress.setBackground(null, true, false);
        return radialProgress;
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(getResourceManager().getString(C3632R.string.chat_reaction_title));
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == 1) {
                    CreateReactionButtonsActivity.this.createMessage();
                } else {
                    CreateReactionButtonsActivity.this.finishFragment();
                }
            }
        });
        ActionBarMenuItem setupActionBar$lambda$20$lambda$19$lambda$18 = c3704ActionBar.createMenu().addItem(1, getResourceManager().getString(C3632R.string.chat_reaction_create));
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$20$lambda$19$lambda$18, "setupActionBar$lambda$20$lambda$19$lambda$18");
        ViewExtKt.invisible$default(setupActionBar$lambda$20$lambda$19$lambda$18, false, 1, null);
        this.doneItem = setupActionBar$lambda$20$lambda$19$lambda$18;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void showEmojiView$default(CreateReactionButtonsActivity createReactionButtonsActivity, boolean z, View view, int i, Object obj) {
        if ((i & 2) != 0) {
            view = createReactionButtonsActivity.getEmojiView();
        }
        createReactionButtonsActivity.showEmojiView(z, view);
    }

    private final void showEmojiView(boolean z, View view) {
        this.showEmojiView = z;
        view.setVisibility(z ^ true ? 4 : 0);
        AnimatorSet animatorSet = new AnimatorSet();
        Animator[] animatorArr = new Animator[1];
        Property property = View.TRANSLATION_Y;
        float[] fArr = new float[1];
        fArr[0] = this.showEmojiView ? BitmapDescriptorFactory.HUE_RED : this.currentHeight;
        animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
        animatorSet.playTogether(animatorArr);
        animatorSet.setDuration(200L);
        animatorSet.start();
        this.emojiViewAnimator = animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createMessage() {
        if (!getListAdapter().isAllButtonsValid()) {
            showToast(getResourceManager().getString(C3632R.string.chat_reaction_empty_field_warning));
        } else {
            getPresenter().prepareTextMessage(getListAdapter().getFixedEmotions(), getListAdapter().getAllButtons(), this.messageText, getListAdapter().getButtonLine(), this.attachedFile, this.replyMessageObject);
        }
    }

    private final void updateProgressValue(long j, long j2) {
        float coerceAtMost;
        float f;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(1.0f, ((float) j) / ((float) j2));
        getUploadProgressBar().setProgress(((int) (coerceAtMost * f)) / 100, true);
        getUploadView().invalidate();
        TextView uploadProgressTextView = getUploadProgressTextView();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        long j3 = 1000;
        String format = String.format("%d/%d", Arrays.copyOf(new Object[]{Long.valueOf(j2 / j3), Long.valueOf(j / j3)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        uploadProgressTextView.setText(format);
        ViewExtKt.visible$default(getUploadView(), false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showURLButtonDialog(final int i, MovingReactionCell movingReactionCell) {
        UrlButton urlButton;
        String url;
        String str = null;
        showEmojiView$default(this, false, null, 2, null);
        final Activity parentActivity = getParentActivity();
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(parentActivity) { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$showURLButtonDialog$editText$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m108dp(64.0f), 1073741824));
            }
        };
        ViewExtKt.singleLine(editTextBoldCursor);
        editTextBoldCursor.setLayoutParams(LayoutHelper.createFrame(-1, -2.0f));
        editTextBoldCursor.setFocusable(true);
        editTextBoldCursor.setImeOptions(6);
        editTextBoldCursor.setBackground(null);
        if (movingReactionCell != null && (urlButton = movingReactionCell.getUrlButton()) != null && (url = urlButton.getUrl()) != null) {
            if (url.length() == 0) {
                url = "http://";
            }
            str = url;
        }
        editTextBoldCursor.setText(str);
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        editTextBoldCursor.setHintText(LocaleController.getString("URL", C3632R.string.URL));
        editTextBoldCursor.setHeaderHintColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
        editTextBoldCursor.setTransformHintToHeader(true);
        editTextBoldCursor.setLineColors(Theme.getColor(Theme.key_windowBackgroundWhiteInputField), Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated), Theme.getColor(Theme.key_text_RedRegular));
        editTextBoldCursor.setSelection(0, editTextBoldCursor.getText().length());
        editTextBoldCursor.requestFocus();
        editTextBoldCursor.setPadding(0, 0, 0, 0);
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        frameLayout.setLayoutParams(LayoutHelper.createFrame(-1, -2.0f));
        ViewExtKt.setHorizontalPadding(frameLayout, 24);
        frameLayout.addView(editTextBoldCursor);
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString("CreateLink", C3632R.string.CreateLink));
        builder.setView(frameLayout);
        builder.setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), new DialogInterface.OnClickListener() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                CreateReactionButtonsActivity.showURLButtonDialog$lambda$27$lambda$25(CreateReactionButtonsActivity.this, i, editTextBoldCursor, dialogInterface, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), new DialogInterface.OnClickListener() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog create = builder.create();
        create.setDismissDialogByButtons(false);
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                CreateReactionButtonsActivity.showURLButtonDialog$lambda$29$lambda$28(EditTextBoldCursor.this, dialogInterface);
            }
        });
        showDialog(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showURLButtonDialog$lambda$27$lambda$25(CreateReactionButtonsActivity this$0, int i, EditTextBoldCursor editText, DialogInterface dialogInterface, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editText, "$editText");
        this$0.getPresenter().validateUrl(i, editText.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showURLButtonDialog$lambda$29$lambda$28(EditTextBoldCursor editText, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(editText, "$editText");
        editText.requestFocus();
        AndroidUtilities.showKeyboard(editText);
    }

    /* compiled from: CreateReactionButtonsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final ResourceManager resourceManager;
        final /* synthetic */ CreateReactionButtonsActivity this$0;

        /* compiled from: CreateReactionButtonsActivity.kt */
        /* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$ListAdapter$WhenMappings */
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ColumnType.values().length];
                try {
                    iArr[ColumnType.EMOJI.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public ListAdapter(CreateReactionButtonsActivity createReactionButtonsActivity, ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            this.this$0 = createReactionButtonsActivity;
            this.resourceManager = resourceManager;
            updateRows();
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x0053 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean isAllButtonsValid() {
            /*
                r5 = this;
                com.iMe.fork.ui.fragment.CreateReactionButtonsActivity r0 = r5.this$0
                com.iMe.storage.data.network.model.request.reaction.UrlButton[] r0 = com.iMe.fork.p023ui.fragment.CreateReactionButtonsActivity.access$getButtons$p(r0)
                java.util.List r0 = kotlin.collections.ArraysKt.filterNotNull(r0)
                int r1 = r0.size()
                com.iMe.fork.ui.fragment.CreateReactionButtonsActivity r2 = r5.this$0
                int r2 = com.iMe.fork.p023ui.fragment.CreateReactionButtonsActivity.access$getButtonsCount$p(r2)
                r3 = 0
                r4 = 1
                if (r1 != r2) goto L57
                boolean r1 = r0.isEmpty()
                if (r1 == 0) goto L20
            L1e:
                r0 = r4
                goto L54
            L20:
                java.util.Iterator r0 = r0.iterator()
            L24:
                boolean r1 = r0.hasNext()
                if (r1 == 0) goto L1e
                java.lang.Object r1 = r0.next()
                com.iMe.storage.data.network.model.request.reaction.UrlButton r1 = (com.iMe.storage.data.network.model.request.reaction.UrlButton) r1
                java.lang.String r2 = r1.getUrl()
                int r2 = r2.length()
                if (r2 <= 0) goto L3c
                r2 = r4
                goto L3d
            L3c:
                r2 = r3
            L3d:
                if (r2 == 0) goto L50
                java.lang.String r1 = r1.getTitle()
                int r1 = r1.length()
                if (r1 <= 0) goto L4b
                r1 = r4
                goto L4c
            L4b:
                r1 = r3
            L4c:
                if (r1 == 0) goto L50
                r1 = r4
                goto L51
            L50:
                r1 = r3
            L51:
                if (r1 != 0) goto L24
                r0 = r3
            L54:
                if (r0 == 0) goto L57
                r3 = r4
            L57:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p023ui.fragment.CreateReactionButtonsActivity.ListAdapter.isAllButtonsValid():boolean");
        }

        public final List<UrlButton> getAllButtons() {
            List<UrlButton> filterNotNull;
            filterNotNull = ArraysKt___ArraysKt.filterNotNull(this.this$0.buttons);
            return filterNotNull;
        }

        public final List<String> getFixedEmotions() {
            int collectionSizeOrDefault;
            ArrayList<String> arrayList = this.this$0.reactions;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (String str : arrayList) {
                arrayList2.add(Emoji.fixEmoji(str));
            }
            return arrayList2;
        }

        public final int getButtonLine() {
            return this.this$0.buttonsRowsType.ordinal() + 1;
        }

        public final void addEmoji(String str) {
            Intrinsics.checkNotNullParameter(str, "str");
            if (this.this$0.reactions.contains(str)) {
                return;
            }
            this.this$0.reactions.add(str);
            updateRows();
            if (this.this$0.reactions.size() < 6) {
                notifyItemInserted(this.this$0.reactionsEndRow);
            } else {
                notifyDataSetChanged();
            }
            notifyItemChanged(this.this$0.reactionsSectionRow);
        }

        public final void addUrlButton() {
            CreateReactionButtonsActivity createReactionButtonsActivity;
            this.this$0.buttonsCount++;
            updateRows();
            if (this.this$0.buttonsCount < 12) {
                notifyItemInserted(this.this$0.buttonsEndRow);
            } else {
                notifyItemChanged(this.this$0.buttonsAddRow);
            }
            this.this$0.requestFieldFocusAtPosition = createReactionButtonsActivity.buttonsEndRow - 1;
            notifyItemChanged(this.this$0.buttonsEndRow);
            notifyItemChanged(this.this$0.buttonsSectionRow);
        }

        public final void addUrlAddress(int i, String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            RecyclerView.ViewHolder findViewHolderForLayoutPosition = this.this$0.getListView().findViewHolderForLayoutPosition(i);
            KeyEvent.Callback callback = findViewHolderForLayoutPosition != null ? findViewHolderForLayoutPosition.itemView : null;
            MovingReactionCell movingReactionCell = callback instanceof MovingReactionCell ? (MovingReactionCell) callback : null;
            if (movingReactionCell == null) {
                return;
            }
            movingReactionCell.addUrlAddress(string);
            int i2 = i - this.this$0.buttonsStartRow;
            if (i2 < 0 || i2 > 6) {
                return;
            }
            this.this$0.buttons[i2] = movingReactionCell.getUrlButton();
        }

        public final ColumnType getDialogTypeByPosition(int i) {
            boolean z = true;
            if (i < this.this$0.reactionsEndRow && this.this$0.reactionsStartRow <= i) {
                return ColumnType.EMOJI;
            }
            int i2 = this.this$0.buttonsStartRow;
            if (i >= this.this$0.buttonsEndRow || i2 > i) {
                z = false;
            }
            if (z) {
                return ColumnType.BUTTON;
            }
            return null;
        }

        public final void swapElements(int i, int i2) {
            ColumnType dialogTypeByPosition = getDialogTypeByPosition(i);
            if (dialogTypeByPosition == null) {
                return;
            }
            int sectionPosition = getSectionPosition(dialogTypeByPosition, i);
            int sectionPosition2 = getSectionPosition(dialogTypeByPosition, i2);
            if (dialogTypeByPosition == ColumnType.EMOJI) {
                if (sectionPosition2 > this.this$0.reactionsEndRow - 1 || sectionPosition2 < 0) {
                    return;
                }
                Collections.swap(this.this$0.reactions, sectionPosition, sectionPosition2);
                notifyItemMoved(i, i2);
            } else if (sectionPosition2 > this.this$0.buttonsEndRow - 1 || sectionPosition2 < 0) {
            } else {
                notifyItemMoved(i, i2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            MovingReactionCell movingReactionCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.HEADER_CELL) {
                FrameLayout headerCell = new HeaderCell(this.this$0.getContext());
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                movingReactionCell = headerCell;
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                movingReactionCell = new TextInfoPrivacyCell(this.this$0.getContext(), 21);
            } else if (i == IdFabric$ViewTypes.TEXT_CELL) {
                FrameLayout textCell = new TextCell(this.this$0.getContext());
                textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                movingReactionCell = textCell;
            } else if (i == IdFabric$ViewTypes.MOVING_REACTION) {
                Context context = this.this$0.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                final MovingReactionCell movingReactionCell2 = new MovingReactionCell(context, false);
                final CreateReactionButtonsActivity createReactionButtonsActivity = this.this$0;
                movingReactionCell2.setShowNextButton(true);
                ViewExtKt.safeThrottledClick$default(movingReactionCell2.getDeleteImageView(), 0L, new Function1<View, Unit>() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        CreateReactionButtonsActivity.this.getListAdapter().removeEmojiItem(movingReactionCell2);
                    }
                }, 1, null);
                movingReactionCell = movingReactionCell2;
            } else if (i == IdFabric$ViewTypes.URL_BUTTON) {
                Context context2 = this.this$0.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "context");
                final MovingReactionCell movingReactionCell3 = new MovingReactionCell(context2, true);
                final CreateReactionButtonsActivity createReactionButtonsActivity2 = this.this$0;
                movingReactionCell3.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        int adapterPosition;
                        RecyclerView.ViewHolder findContainingViewHolder = CreateReactionButtonsActivity.this.getListView().findContainingViewHolder(movingReactionCell3);
                        if (findContainingViewHolder == null || (adapterPosition = findContainingViewHolder.getAdapterPosition() - CreateReactionButtonsActivity.this.buttonsStartRow) < 0 || adapterPosition >= CreateReactionButtonsActivity.this.buttonsCount) {
                            return;
                        }
                        movingReactionCell3.getUrlButton().setTitle(String.valueOf(charSequence));
                        CreateReactionButtonsActivity.this.buttons[adapterPosition] = movingReactionCell3.getUrlButton();
                    }
                });
                movingReactionCell3.setShowNextButton(true);
                movingReactionCell3.getDeleteImageView().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CreateReactionButtonsActivity.ListAdapter.onCreateViewHolder$lambda$8$lambda$6(CreateReactionButtonsActivity.this, view);
                    }
                });
                movingReactionCell3.getLinkImageView().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CreateReactionButtonsActivity.ListAdapter.onCreateViewHolder$lambda$8$lambda$7(CreateReactionButtonsActivity.this, movingReactionCell3, view);
                    }
                });
                movingReactionCell = movingReactionCell3;
            } else {
                FrameLayout textSettingsCell = new TextSettingsCell(this.this$0.getContext());
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                movingReactionCell = textSettingsCell;
            }
            return new RecyclerListView.Holder(movingReactionCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCreateViewHolder$lambda$8$lambda$6(CreateReactionButtonsActivity this$0, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            RecyclerListView listView = this$0.getListView();
            ViewParent parent = view.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type com.iMe.fork.ui.view.MovingReactionCell");
            RecyclerView.ViewHolder findContainingViewHolder = listView.findContainingViewHolder((MovingReactionCell) parent);
            if (findContainingViewHolder == null) {
                return;
            }
            this$0.getListAdapter().removeUrlItem(findContainingViewHolder.getAdapterPosition());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCreateViewHolder$lambda$8$lambda$7(CreateReactionButtonsActivity this$0, MovingReactionCell this_apply, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            RecyclerListView listView = this$0.getListView();
            ViewParent parent = view.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type com.iMe.fork.ui.view.MovingReactionCell");
            RecyclerView.ViewHolder findContainingViewHolder = listView.findContainingViewHolder((MovingReactionCell) parent);
            if (findContainingViewHolder == null) {
                return;
            }
            this$0.showURLButtonDialog(findContainingViewHolder.getAdapterPosition(), this_apply);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Drawable drawable;
            String format;
            String format2;
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            if (view instanceof HeaderCell) {
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                ((HeaderCell) view).setText(updateHeader(i));
            } else if (view instanceof TextInfoPrivacyCell) {
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                CreateReactionButtonsActivity createReactionButtonsActivity = this.this$0;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == createReactionButtonsActivity.reactionsSectionRow) {
                    if (6 - createReactionButtonsActivity.reactions.size() > 1) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        format2 = String.format(this.resourceManager.getString(C3632R.string.chat_reaction_max_reaction_value_info), Arrays.copyOf(new Object[]{Integer.valueOf(6 - createReactionButtonsActivity.reactions.size())}, 1));
                        Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
                    } else {
                        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                        format2 = String.format(this.resourceManager.getString(C3632R.string.chat_reaction_max_reaction_value_info_single), Arrays.copyOf(new Object[]{Integer.valueOf(6 - createReactionButtonsActivity.reactions.size())}, 1));
                        Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
                    }
                    textInfoPrivacyCell.setText(format2);
                    return;
                }
                if (12 - createReactionButtonsActivity.buttonsCount > 1) {
                    StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                    format = String.format(this.resourceManager.getString(C3632R.string.chat_reaction_max_button_value_info), Arrays.copyOf(new Object[]{Integer.valueOf(12 - createReactionButtonsActivity.buttonsCount)}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                } else {
                    StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
                    format = String.format(this.resourceManager.getString(C3632R.string.chat_reaction_max_button_value_info_single), Arrays.copyOf(new Object[]{Integer.valueOf(12 - createReactionButtonsActivity.buttonsCount)}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                }
                textInfoPrivacyCell.setText(format);
            } else if (view instanceof TextCell) {
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                CreateReactionButtonsActivity createReactionButtonsActivity2 = this.this$0;
                TextCell textCell = (TextCell) view;
                textCell.setColors(-1, Theme.key_windowBackgroundWhiteBlueText4);
                Drawable drawable2 = AppCompatResources.getDrawable(textCell.getContext(), C3632R.C3634drawable.poll_add_circle);
                if (drawable2 == null || (drawable = AppCompatResources.getDrawable(textCell.getContext(), C3632R.C3634drawable.poll_add_plus)) == null) {
                    return;
                }
                drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_switchTrackChecked), PorterDuff.Mode.MULTIPLY));
                drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), PorterDuff.Mode.MULTIPLY));
                textCell.setTextAndIcon(this.resourceManager.getString(createReactionButtonsActivity2.reactionsAddRow == i ? C3632R.string.chat_reaction_select_emoji : C3632R.string.chat_reaction_create_button), (Drawable) new CombinedDrawable(drawable2, drawable), false);
            } else if (view instanceof MovingReactionCell) {
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                CreateReactionButtonsActivity createReactionButtonsActivity3 = this.this$0;
                MovingReactionCell movingReactionCell = (MovingReactionCell) view;
                if (holder.getItemViewType() == IdFabric$ViewTypes.MOVING_REACTION) {
                    movingReactionCell.setEmoji((String) createReactionButtonsActivity3.reactions.get(i - createReactionButtonsActivity3.reactionsStartRow), true);
                    return;
                }
                UrlButton urlButton = createReactionButtonsActivity3.buttons[i - createReactionButtonsActivity3.buttonsStartRow];
                if (urlButton == null) {
                    urlButton = new UrlButton("", "");
                }
                movingReactionCell.updateUrlButton(urlButton);
                if (createReactionButtonsActivity3.requestFieldFocusAtPosition == i) {
                    EditTextBoldCursor editText = movingReactionCell.getEditText();
                    editText.requestFocus();
                    AndroidUtilities.showKeyboard(editText);
                    createReactionButtonsActivity3.requestFieldFocusAtPosition = -1;
                }
            } else if (view instanceof TextSettingsCell) {
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                ((TextSettingsCell) view).setTextAndValue(this.resourceManager.getString(C3632R.string.chat_reaction_button_position), this.resourceManager.getString(this.this$0.buttonsRowsType.getResource()), false);
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            Integer valueOf = viewHolder != null ? Integer.valueOf(viewHolder.getAdapterPosition()) : null;
            int i = this.this$0.reactionsAddRow;
            if (valueOf == null || valueOf.intValue() != i) {
                int i2 = this.this$0.buttonsAddRow;
                if (valueOf == null || valueOf.intValue() != i2) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            boolean z = false;
            if ((i == this.this$0.reactionHeaderRow || i == this.this$0.buttonsHeaderRow) || i == this.this$0.settingsHeaderRow) {
                return IdFabric$ViewTypes.HEADER_CELL;
            }
            if (i < this.this$0.reactionsEndRow && this.this$0.reactionsStartRow <= i) {
                return IdFabric$ViewTypes.MOVING_REACTION;
            }
            if (i == this.this$0.reactionsAddRow || i == this.this$0.buttonsAddRow) {
                return IdFabric$ViewTypes.TEXT_CELL;
            }
            if (i == this.this$0.reactionsSectionRow || i == this.this$0.buttonsSectionRow) {
                return IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL;
            }
            int i2 = this.this$0.buttonsStartRow;
            if (i < this.this$0.buttonsEndRow && i2 <= i) {
                z = true;
            }
            return z ? IdFabric$ViewTypes.URL_BUTTON : IdFabric$ViewTypes.TEXT_SETTINGS_CELL;
        }

        private final int getSectionPosition(ColumnType columnType, int i) {
            return i - (WhenMappings.$EnumSwitchMapping$0[columnType.ordinal()] == 1 ? this.this$0.reactionsStartRow : this.this$0.buttonsStartRow);
        }

        private final void updateRows() {
            int i;
            this.this$0.rowCount = 0;
            CreateReactionButtonsActivity createReactionButtonsActivity = this.this$0;
            int i2 = createReactionButtonsActivity.rowCount;
            createReactionButtonsActivity.rowCount = i2 + 1;
            createReactionButtonsActivity.reactionHeaderRow = i2;
            CreateReactionButtonsActivity createReactionButtonsActivity2 = this.this$0;
            createReactionButtonsActivity2.reactionsStartRow = createReactionButtonsActivity2.rowCount;
            this.this$0.rowCount += this.this$0.reactions.size();
            CreateReactionButtonsActivity createReactionButtonsActivity3 = this.this$0;
            createReactionButtonsActivity3.reactionsEndRow = createReactionButtonsActivity3.rowCount;
            CreateReactionButtonsActivity createReactionButtonsActivity4 = this.this$0;
            int i3 = -1;
            if (createReactionButtonsActivity4.reactions.size() < 6) {
                CreateReactionButtonsActivity createReactionButtonsActivity5 = this.this$0;
                i = createReactionButtonsActivity5.rowCount;
                createReactionButtonsActivity5.rowCount = i + 1;
            } else {
                i = -1;
            }
            createReactionButtonsActivity4.reactionsAddRow = i;
            CreateReactionButtonsActivity createReactionButtonsActivity6 = this.this$0;
            int i4 = createReactionButtonsActivity6.rowCount;
            createReactionButtonsActivity6.rowCount = i4 + 1;
            createReactionButtonsActivity6.reactionsSectionRow = i4;
            CreateReactionButtonsActivity createReactionButtonsActivity7 = this.this$0;
            int i5 = createReactionButtonsActivity7.rowCount;
            createReactionButtonsActivity7.rowCount = i5 + 1;
            createReactionButtonsActivity7.buttonsHeaderRow = i5;
            CreateReactionButtonsActivity createReactionButtonsActivity8 = this.this$0;
            boolean z = true;
            createReactionButtonsActivity8.buttonsStartRow = createReactionButtonsActivity8.buttonsHeaderRow + 1;
            this.this$0.rowCount += this.this$0.buttonsCount;
            CreateReactionButtonsActivity createReactionButtonsActivity9 = this.this$0;
            createReactionButtonsActivity9.buttonsEndRow = createReactionButtonsActivity9.rowCount;
            CreateReactionButtonsActivity createReactionButtonsActivity10 = this.this$0;
            if (createReactionButtonsActivity10.buttonsCount < 12) {
                CreateReactionButtonsActivity createReactionButtonsActivity11 = this.this$0;
                i3 = createReactionButtonsActivity11.rowCount;
                createReactionButtonsActivity11.rowCount = i3 + 1;
            }
            createReactionButtonsActivity10.buttonsAddRow = i3;
            CreateReactionButtonsActivity createReactionButtonsActivity12 = this.this$0;
            int i6 = createReactionButtonsActivity12.rowCount;
            createReactionButtonsActivity12.rowCount = i6 + 1;
            createReactionButtonsActivity12.buttonsSectionRow = i6;
            CreateReactionButtonsActivity createReactionButtonsActivity13 = this.this$0;
            int i7 = createReactionButtonsActivity13.rowCount;
            createReactionButtonsActivity13.rowCount = i7 + 1;
            createReactionButtonsActivity13.settingsHeaderRow = i7;
            CreateReactionButtonsActivity createReactionButtonsActivity14 = this.this$0;
            int i8 = createReactionButtonsActivity14.rowCount;
            createReactionButtonsActivity14.rowCount = i8 + 1;
            createReactionButtonsActivity14.settingsButtonRowsTypeRow = i8;
            ActionBarMenuItem actionBarMenuItem = this.this$0.doneItem;
            if (actionBarMenuItem == null) {
                return;
            }
            if (this.this$0.buttonsCount != 0 || !this.this$0.reactions.isEmpty()) {
                z = false;
            }
            actionBarMenuItem.setVisibility(z ? 4 : 0);
        }

        private final String updateHeader(int i) {
            return i == this.this$0.reactionHeaderRow ? this.resourceManager.getString(C3632R.string.chat_reaction_create_a_reaction) : i == this.this$0.buttonsHeaderRow ? this.resourceManager.getString(C3632R.string.chat_reaction_create_button) : this.resourceManager.getString(C3632R.string.chat_reaction_settings);
        }

        private final void removeUrlItem(int i) {
            int lastIndex;
            int lastIndex2;
            RecyclerView.ViewHolder findViewHolderForLayoutPosition = this.this$0.getListView().findViewHolderForLayoutPosition(i);
            View view = findViewHolderForLayoutPosition != null ? findViewHolderForLayoutPosition.itemView : null;
            MovingReactionCell movingReactionCell = view instanceof MovingReactionCell ? (MovingReactionCell) view : null;
            if (movingReactionCell == null || i == -1) {
                return;
            }
            notifyItemRemoved(i);
            CreateReactionButtonsActivity createReactionButtonsActivity = this.this$0;
            createReactionButtonsActivity.buttonsCount--;
            updateRows();
            int i2 = i - this.this$0.buttonsStartRow;
            UrlButton[] urlButtonArr = this.this$0.buttons;
            lastIndex = ArraysKt___ArraysKt.getLastIndex(this.this$0.buttons);
            System.arraycopy(this.this$0.buttons, i2 + 1, urlButtonArr, i2, lastIndex - i2);
            UrlButton[] urlButtonArr2 = this.this$0.buttons;
            lastIndex2 = ArraysKt___ArraysKt.getLastIndex(this.this$0.buttons);
            urlButtonArr2[lastIndex2] = null;
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.this$0.getListView().findViewHolderForAdapterPosition(i - 1);
            EditTextBoldCursor editText = movingReactionCell.getEditText();
            if (findViewHolderForAdapterPosition != null) {
                View view2 = findViewHolderForAdapterPosition.itemView;
                if (view2 instanceof MovingReactionCell) {
                    Intrinsics.checkNotNullExpressionValue(view2, "holder1.itemView");
                    ((MovingReactionCell) view2).getEditText().requestFocus();
                    editText.clearFocus();
                    notifyItemChanged(this.this$0.buttonsSectionRow);
                }
            }
            if (editText.isFocused()) {
                AndroidUtilities.hideKeyboard(editText);
            }
            editText.clearFocus();
            notifyItemChanged(this.this$0.buttonsSectionRow);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void removeEmojiItem(MovingReactionCell movingReactionCell) {
            int i;
            int indexOf;
            if (movingReactionCell.isEmojiButton()) {
                indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends Object>) ((List) this.this$0.reactions), (Object) movingReactionCell.getEmojiValue());
                i = this.this$0.reactionsStartRow + indexOf;
                this.this$0.reactions.remove(indexOf);
            } else {
                i = -1;
            }
            updateRows();
            notifyItemRemoved(i);
            notifyItemChanged(this.this$0.reactionsSectionRow);
        }
    }

    /* compiled from: CreateReactionButtonsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$TouchHelperCallback */
    /* loaded from: classes3.dex */
    public final class TouchHelperCallback extends ItemTouchHelper.Callback {
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            if (viewHolder.getItemViewType() != IdFabric$ViewTypes.URL_BUTTON && viewHolder.getItemViewType() != IdFabric$ViewTypes.MOVING_REACTION) {
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder source, RecyclerView.ViewHolder target) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(target, "target");
            if (CreateReactionButtonsActivity.this.getListAdapter().getDialogTypeByPosition(source.getAdapterPosition()) != CreateReactionButtonsActivity.this.getListAdapter().getDialogTypeByPosition(target.getAdapterPosition())) {
                return false;
            }
            CreateReactionButtonsActivity.this.getListAdapter().swapElements(source.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                CreateReactionButtonsActivity.this.getListView().cancelClickRunnables(false);
                View view = viewHolder != null ? viewHolder.itemView : null;
                if (view != null) {
                    view.setPressed(true);
                }
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
        }
    }

    /* compiled from: CreateReactionButtonsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
