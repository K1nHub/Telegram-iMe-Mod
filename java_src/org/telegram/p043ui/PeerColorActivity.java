package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ReplacementSpan;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.ThemePreviewMessagesCell;
import org.telegram.p043ui.Components.AnimatedColor;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.Easings;
import org.telegram.p043ui.Components.FilledTabsView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SimpleThemeDescription;
import org.telegram.p043ui.Components.Text;
import org.telegram.p043ui.Components.ViewPagerFixed;
import org.telegram.p043ui.PeerColorActivity;
import org.telegram.p043ui.SelectAnimatedEmojiDialog;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_account_updateColor;
import org.telegram.tgnet.TLRPC$TL_peerColor;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.PeerColorActivity */
/* loaded from: classes5.dex */
public class PeerColorActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private static final float[] particles = {-18.0f, -24.66f, 24.0f, 0.4f, 5.33f, -53.0f, 28.0f, 0.38f, -4.0f, -86.0f, 19.0f, 0.18f, 31.0f, -30.0f, 21.0f, 0.35f, 12.0f, -3.0f, 24.0f, 0.18f, 30.0f, -73.0f, 19.0f, 0.3f, 43.0f, -101.0f, 16.0f, 0.1f, -50.0f, 1.33f, 20.0f, 0.22f, -58.0f, -33.0f, 24.0f, 0.22f, -35.0f, -62.0f, 25.0f, 0.22f, -59.0f, -88.0f, 19.0f, 0.18f, -86.0f, -61.0f, 19.0f, 0.1f, -90.0f, -14.33f, 19.66f, 0.18f};
    private FrameLayout actionBarContainer;
    private boolean applying;
    private boolean applyingName;
    private boolean applyingProfile;
    private ImageView backButton;
    private BaseFragment bulletinFragment;
    private View changeDayNightView;
    private ValueAnimator changeDayNightViewAnimator;
    private float changeDayNightViewProgress;
    private ColoredActionBar colorBar;
    private FrameLayout contentView;
    private final SparseIntArray currentColors = new SparseIntArray();
    private ImageView dayNightItem;
    private final long dialogId;
    private boolean forceDark;
    private final boolean isChannel;
    private boolean isDark;
    public boolean loading;
    private final Theme.MessageDrawable msgInDrawable;
    private final Theme.MessageDrawable msgInDrawableSelected;
    public Page namePage;
    private Theme.ResourcesProvider parentResourcesProvider;
    public Page profilePage;
    private boolean startAtProfile;
    private RLottieDrawable sunDrawable;
    private FilledTabsView tabsView;
    private SimpleTextView titleView;
    private ViewPagerFixed viewPager;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$toggleTheme$5(View view, MotionEvent motionEvent) {
        return true;
    }

    public Page getCurrentPage() {
        return this.viewPager.getCurrentPosition() == 0 ? this.namePage : this.profilePage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PeerColorActivity$Page */
    /* loaded from: classes5.dex */
    public class Page extends FrameLayout {
        private int actionBarHeight;
        private ButtonWithCounterView button;
        private FrameLayout buttonContainer;
        private CharSequence buttonLocked;
        int buttonRow;
        private CharSequence buttonUnlocked;
        int clearRow;
        int colorPickerRow;
        int iconRow;
        int info2Row;
        int infoRow;
        private RecyclerView.Adapter listAdapter;
        private RecyclerListView listView;
        private ThemePreviewMessagesCell messagesCellPreview;
        private PeerColorGrid peerColorPicker;
        int previewRow;
        private ProfilePreview profilePreview;
        int rowCount;
        private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialog;
        private int selectedColor;
        private long selectedEmoji;
        private SetReplyIconCell setReplyIconCell;
        int shadowRow;
        private final int type;

        public Page(Context context, final int i) {
            super(context);
            this.selectedColor = -1;
            this.selectedEmoji = 0L;
            this.previewRow = -1;
            this.colorPickerRow = -1;
            this.infoRow = -1;
            this.iconRow = -1;
            this.info2Row = -1;
            this.buttonRow = -1;
            this.clearRow = -1;
            this.shadowRow = -1;
            this.type = i;
            if (i == 1) {
                if (PeerColorActivity.this.dialogId < 0) {
                    TLRPC$Chat chat = PeerColorActivity.this.getMessagesController().getChat(Long.valueOf(-PeerColorActivity.this.dialogId));
                    this.selectedColor = ChatObject.getProfileColorId(chat);
                    this.selectedEmoji = ChatObject.getProfileEmojiId(chat);
                } else {
                    TLRPC$User currentUser = PeerColorActivity.this.getUserConfig().getCurrentUser();
                    this.selectedColor = UserObject.getProfileColorId(currentUser);
                    this.selectedEmoji = UserObject.getProfileEmojiId(currentUser);
                }
            } else if (PeerColorActivity.this.dialogId < 0) {
                TLRPC$Chat chat2 = PeerColorActivity.this.getMessagesController().getChat(Long.valueOf(-PeerColorActivity.this.dialogId));
                this.selectedColor = ChatObject.getColorId(chat2);
                this.selectedEmoji = ChatObject.getEmojiId(chat2);
            } else {
                TLRPC$User currentUser2 = PeerColorActivity.this.getUserConfig().getCurrentUser();
                this.selectedColor = UserObject.getColorId(currentUser2);
                this.selectedEmoji = UserObject.getEmojiId(currentUser2);
            }
            RecyclerListView recyclerListView = new RecyclerListView(getContext(), PeerColorActivity.this.getResourceProvider(), PeerColorActivity.this) { // from class: org.telegram.ui.PeerColorActivity.Page.1
                @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
                protected void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, i3);
                    Page.this.updateButtonY();
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                    super.onLayout(z, i2, i3, i4, i5);
                    Page.this.updateButtonY();
                }
            };
            this.listView = recyclerListView;
            ((DefaultItemAnimator) recyclerListView.getItemAnimator()).setSupportsChangeAnimations(false);
            this.listView.setLayoutManager(new LinearLayoutManager(getContext()));
            RecyclerListView recyclerListView2 = this.listView;
            C67542 c67542 = new C67542(PeerColorActivity.this, i);
            this.listAdapter = c67542;
            recyclerListView2.setAdapter(c67542);
            this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PeerColorActivity$Page$$ExternalSyntheticLambda2
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i2) {
                    PeerColorActivity.Page.this.lambda$new$0(i, view, i2);
                }
            });
            addView(this.listView, LayoutHelper.createFrame(-1, -1));
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.buttonContainer = frameLayout;
            frameLayout.setPadding(AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(14));
            this.buttonContainer.setBackgroundColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundGray));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("l");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C3632R.C3634drawable.msg_mini_lock2), 0, 1, 33);
            this.buttonUnlocked = LocaleController.getString(PeerColorActivity.this.isChannel ? C3632R.string.ChannelColorApply : C3632R.string.UserColorApplyIcon);
            this.buttonLocked = new SpannableStringBuilder(spannableStringBuilder).append((CharSequence) " ").append(this.buttonUnlocked);
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), PeerColorActivity.this.getResourceProvider());
            this.button = buttonWithCounterView;
            buttonWithCounterView.text.setHacks(true, true, true);
            this.button.setText((PeerColorActivity.this.isChannel || PeerColorActivity.this.getUserConfig().isPremium()) ? this.buttonUnlocked : this.buttonLocked, false);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PeerColorActivity$Page$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PeerColorActivity.Page.this.lambda$new$1(view);
                }
            });
            this.buttonContainer.addView(this.button, LayoutHelper.createFrame(-1, 48));
            addView(this.buttonContainer, LayoutHelper.createFrame(-1, -2, 80));
            this.listView.setOnScrollListener(new RecyclerView.OnScrollListener(PeerColorActivity.this) { // from class: org.telegram.ui.PeerColorActivity.Page.3
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    Page.this.updateButtonY();
                }
            });
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
            defaultItemAnimator.setDurations(350L);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setSupportsChangeAnimations(false);
            this.listView.setItemAnimator(defaultItemAnimator);
            if (i == 1) {
                ProfilePreview profilePreview = new ProfilePreview(getContext(), ((BaseFragment) PeerColorActivity.this).currentAccount, PeerColorActivity.this.dialogId, ((BaseFragment) PeerColorActivity.this).resourceProvider);
                this.profilePreview = profilePreview;
                profilePreview.setColor(this.selectedColor, false);
                this.profilePreview.setEmoji(this.selectedEmoji, false);
                addView(this.profilePreview, LayoutHelper.createFrame(-1, -2, 55));
            }
            updateColors();
            updateRows();
            setWillNotDraw(false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.PeerColorActivity$Page$2 */
        /* loaded from: classes5.dex */
        public class C67542 extends RecyclerListView.SelectionAdapter {
            final /* synthetic */ int val$type;

            C67542(PeerColorActivity peerColorActivity, int i) {
                this.val$type = i;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return viewHolder.getItemViewType() == 3 || viewHolder.getItemViewType() == 6;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                TextCell textCell;
                if (i == 0) {
                    ThemePreviewMessagesCell themePreviewMessagesCell = Page.this.messagesCellPreview = new ThemePreviewMessagesCell(Page.this.getContext(), ((BaseFragment) PeerColorActivity.this).parentLayout, 3, PeerColorActivity.this.dialogId, ((BaseFragment) PeerColorActivity.this).resourceProvider);
                    if (Build.VERSION.SDK_INT >= 19) {
                        themePreviewMessagesCell.setImportantForAccessibility(4);
                    }
                    themePreviewMessagesCell.fragment = PeerColorActivity.this;
                    textCell = themePreviewMessagesCell;
                } else if (i == 1) {
                    final PeerColorGrid peerColorGrid = Page.this.peerColorPicker = new PeerColorGrid(Page.this.getContext(), this.val$type, ((BaseFragment) PeerColorActivity.this).currentAccount, ((BaseFragment) PeerColorActivity.this).resourceProvider);
                    peerColorGrid.setBackgroundColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    peerColorGrid.setSelected(Page.this.selectedColor, false);
                    final int i2 = this.val$type;
                    peerColorGrid.setOnColorClick(new Utilities.Callback() { // from class: org.telegram.ui.PeerColorActivity$Page$2$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            PeerColorActivity.Page.C67542.this.lambda$onCreateViewHolder$0(peerColorGrid, i2, (Integer) obj);
                        }
                    });
                    textCell = peerColorGrid;
                } else if (i == 3) {
                    Page page = Page.this;
                    Page page2 = Page.this;
                    SetReplyIconCell setReplyIconCell = page.setReplyIconCell = new SetReplyIconCell(page2.getContext());
                    setReplyIconCell.update(false);
                    textCell = setReplyIconCell;
                } else if (i == 4) {
                    View view = new View(this, Page.this.getContext()) { // from class: org.telegram.ui.PeerColorActivity.Page.2.2
                        @Override // android.view.View
                        protected void onMeasure(int i3, int i4) {
                            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(16), 1073741824));
                        }
                    };
                    view.setBackground(Theme.getThemedDrawableByKey(Page.this.getContext(), C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    textCell = view;
                } else if (i == 5) {
                    textCell = new View(this, Page.this.getContext()) { // from class: org.telegram.ui.PeerColorActivity.Page.2.1
                        @Override // android.view.View
                        protected void onMeasure(int i3, int i4) {
                            super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(76), 1073741824));
                        }
                    };
                } else if (i != 6) {
                    textCell = new TextInfoPrivacyCell(Page.this.getContext(), PeerColorActivity.this.getResourceProvider());
                } else {
                    TextCell textCell2 = new TextCell(Page.this.getContext(), PeerColorActivity.this.getResourceProvider());
                    textCell2.setBackgroundColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    textCell = textCell2;
                }
                return new RecyclerListView.Holder(textCell);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onCreateViewHolder$0(PeerColorGrid peerColorGrid, int i, Integer num) {
                Page.this.selectedColor = num.intValue();
                peerColorGrid.setSelected(num.intValue(), true);
                Page.this.updateMessages();
                if (Page.this.setReplyIconCell != null) {
                    Page.this.setReplyIconCell.invalidate();
                }
                if (i == 1 && PeerColorActivity.this.colorBar != null) {
                    PeerColorActivity.this.colorBar.setColor(((BaseFragment) PeerColorActivity.this).currentAccount, Page.this.selectedColor, true);
                }
                if (Page.this.profilePreview != null) {
                    Page.this.profilePreview.setColor(Page.this.selectedColor, true);
                }
                Page page = PeerColorActivity.this.profilePage;
                if (page != null && page.profilePreview != null) {
                    PeerColorActivity peerColorActivity = PeerColorActivity.this;
                    if (peerColorActivity.namePage != null) {
                        peerColorActivity.profilePage.profilePreview.overrideAvatarColor(PeerColorActivity.this.namePage.selectedColor);
                    }
                }
                Page.this.checkResetColorButton();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                int itemViewType = getItemViewType(i);
                if (itemViewType != 2) {
                    if (itemViewType != 6) {
                        return;
                    }
                    TextCell textCell = (TextCell) viewHolder.itemView;
                    textCell.updateColors();
                    textCell.setBackgroundColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    Page page = Page.this;
                    if (i == page.clearRow) {
                        textCell.setText(LocaleController.getString(PeerColorActivity.this.isChannel ? C3632R.string.ChannelProfileColorReset : C3632R.string.UserProfileColorReset), false);
                        return;
                    }
                    return;
                }
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                Page page2 = Page.this;
                if (i == page2.infoRow) {
                    if (this.val$type == 0) {
                        textInfoPrivacyCell.setText(LocaleController.getString(PeerColorActivity.this.isChannel ? C3632R.string.ChannelColorHint : C3632R.string.UserColorHint));
                    } else {
                        textInfoPrivacyCell.setText(LocaleController.getString(PeerColorActivity.this.isChannel ? C3632R.string.ChannelProfileHint : C3632R.string.UserProfileHint));
                    }
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(Page.this.getContext(), Page.this.clearRow >= 0 ? C3632R.C3634drawable.greydivider : C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                } else if (i == page2.shadowRow) {
                    textInfoPrivacyCell.setText("");
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(Page.this.getContext(), C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return Page.this.rowCount;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                Page page = Page.this;
                if (i == page.previewRow) {
                    return 0;
                }
                if (i != page.infoRow && i != page.info2Row && i != page.shadowRow) {
                    if (i == page.colorPickerRow) {
                        return 1;
                    }
                    if (i == page.iconRow) {
                        return 3;
                    }
                    if (i == page.buttonRow) {
                        return 5;
                    }
                    if (i == page.clearRow) {
                        return 6;
                    }
                    if (i == getItemCount() - 1) {
                        return 4;
                    }
                }
                return 2;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i, View view, int i2) {
            ProfilePreview profilePreview;
            Page page;
            if (view instanceof SetReplyIconCell) {
                showSelectStatusDialog((SetReplyIconCell) view);
            } else if (i2 == this.clearRow) {
                this.selectedColor = -1;
                this.selectedEmoji = 0L;
                PeerColorGrid peerColorGrid = this.peerColorPicker;
                if (peerColorGrid != null) {
                    peerColorGrid.setSelected(-1, true);
                }
                updateMessages();
                if (i == 1) {
                    PeerColorActivity.this.namePage.updateMessages();
                }
                SetReplyIconCell setReplyIconCell = this.setReplyIconCell;
                if (setReplyIconCell != null) {
                    setReplyIconCell.update(true);
                }
                if (i == 1 && PeerColorActivity.this.colorBar != null) {
                    PeerColorActivity.this.colorBar.setColor(((BaseFragment) PeerColorActivity.this).currentAccount, this.selectedColor, true);
                }
                ProfilePreview profilePreview2 = this.profilePreview;
                if (profilePreview2 != null) {
                    profilePreview2.setColor(this.selectedColor, true);
                    this.profilePreview.setEmoji(this.selectedEmoji, true);
                }
                PeerColorActivity peerColorActivity = PeerColorActivity.this;
                Page page2 = peerColorActivity.profilePage;
                if (page2 != null && (profilePreview = page2.profilePreview) != null && (page = peerColorActivity.namePage) != null) {
                    profilePreview.overrideAvatarColor(page.selectedColor);
                }
                checkResetColorButton();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            PeerColorActivity.this.buttonClick();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (PeerColorActivity.this.getParentLayout() != null) {
                PeerColorActivity.this.getParentLayout().drawHeaderShadow(canvas, this.actionBarHeight);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            if (this.type == 0) {
                this.actionBarHeight = C3704ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight;
                ((ViewGroup.MarginLayoutParams) this.listView.getLayoutParams()).topMargin = this.actionBarHeight;
            } else {
                this.actionBarHeight = AndroidUtilities.m107dp(144) + AndroidUtilities.statusBarHeight;
                ((ViewGroup.MarginLayoutParams) this.listView.getLayoutParams()).topMargin = this.actionBarHeight;
                ((ViewGroup.MarginLayoutParams) this.profilePreview.getLayoutParams()).height = this.actionBarHeight;
            }
            super.onMeasure(i, i2);
        }

        public boolean hasUnsavedChanged() {
            if (PeerColorActivity.this.isChannel) {
                TLRPC$Chat chat = PeerColorActivity.this.getMessagesController().getChat(Long.valueOf(-PeerColorActivity.this.dialogId));
                if (chat == null) {
                    return false;
                }
                return this.type == 0 ? (this.selectedColor == ChatObject.getColorId(chat) && this.selectedEmoji == ChatObject.getEmojiId(chat)) ? false : true : (this.selectedColor == ChatObject.getProfileColorId(chat) && this.selectedEmoji == ChatObject.getProfileEmojiId(chat)) ? false : true;
            }
            TLRPC$User currentUser = PeerColorActivity.this.getUserConfig().getCurrentUser();
            if (currentUser == null) {
                return false;
            }
            return this.type == 0 ? (this.selectedColor == UserObject.getColorId(currentUser) && this.selectedEmoji == UserObject.getEmojiId(currentUser)) ? false : true : (this.selectedColor == UserObject.getProfileColorId(currentUser) && this.selectedEmoji == UserObject.getProfileEmojiId(currentUser)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateButtonY() {
            if (this.buttonContainer == null) {
                return;
            }
            int itemCount = this.listAdapter.getItemCount() - 1;
            boolean z = false;
            int i = 0;
            for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
                View childAt = this.listView.getChildAt(i2);
                int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
                if (childAdapterPosition != -1 && childAdapterPosition <= itemCount) {
                    i = Math.max(i, childAt.getTop());
                    if (childAdapterPosition == itemCount) {
                        z = true;
                    }
                }
            }
            if (!z) {
                i = this.listView.getMeasuredHeight();
            }
            this.buttonContainer.setTranslationY(Math.max(0, i - (this.listView.getMeasuredHeight() - AndroidUtilities.m107dp(76))));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.PeerColorActivity$Page$SetReplyIconCell */
        /* loaded from: classes5.dex */
        public class SetReplyIconCell extends FrameLayout {
            private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable imageDrawable;
            private Text offText;
            private TextView textView;

            public SetReplyIconCell(Context context) {
                super(context);
                setBackgroundColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                TextView textView = new TextView(context);
                this.textView = textView;
                textView.setTextSize(1, 16.0f);
                this.textView.setTextColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                if (Page.this.type == 0) {
                    this.textView.setText(LocaleController.getString(PeerColorActivity.this.isChannel ? C3632R.string.ChannelReplyIcon : C3632R.string.UserReplyIcon));
                } else {
                    this.textView.setText(LocaleController.getString(PeerColorActivity.this.isChannel ? C3632R.string.ChannelProfileIcon : C3632R.string.UserProfileIcon));
                }
                addView(this.textView, LayoutHelper.createFrame(-1, -2, 23, 20, 0, 20, 0));
                this.imageDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, false, AndroidUtilities.m107dp(24), 13);
            }

            public void updateColors() {
                this.textView.setTextColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            }

            public void update(boolean z) {
                if (Page.this.selectedEmoji != 0) {
                    this.imageDrawable.set(Page.this.selectedEmoji, z);
                    this.offText = null;
                    return;
                }
                this.imageDrawable.set((Drawable) null, z);
                if (this.offText == null) {
                    this.offText = new Text(LocaleController.getString(PeerColorActivity.this.isChannel ? C3632R.string.ChannelReplyIconOff : C3632R.string.UserReplyIconOff), 16.0f);
                }
            }

            public void updateImageBounds() {
                this.imageDrawable.setBounds(LocaleController.isRTL ? AndroidUtilities.m107dp(21) : (getWidth() - this.imageDrawable.getIntrinsicWidth()) - AndroidUtilities.m107dp(21), (getHeight() - this.imageDrawable.getIntrinsicHeight()) / 2, LocaleController.isRTL ? AndroidUtilities.m107dp(21) + this.imageDrawable.getIntrinsicWidth() : getWidth() - AndroidUtilities.m107dp(21), (getHeight() + this.imageDrawable.getIntrinsicHeight()) / 2);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                updateImageBounds();
                this.imageDrawable.setColor(Integer.valueOf(getColor()));
                Text text = this.offText;
                if (text != null) {
                    text.draw(canvas, (getMeasuredWidth() - this.offText.getWidth()) - AndroidUtilities.m107dp(19), getMeasuredHeight() / 2.0f, PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueText4), 1.0f);
                } else {
                    this.imageDrawable.draw(canvas);
                }
            }

            public int getColor() {
                MessagesController.PeerColor color;
                if (Page.this.selectedColor >= 0) {
                    if (Page.this.selectedColor >= 7) {
                        MessagesController.PeerColors peerColors = Page.this.type == 0 ? MessagesController.getInstance(((BaseFragment) PeerColorActivity.this).currentAccount).peerColors : MessagesController.getInstance(((BaseFragment) PeerColorActivity.this).currentAccount).profilePeerColors;
                        if (peerColors != null && (color = peerColors.getColor(Page.this.selectedColor)) != null) {
                            return color.getColor1();
                        }
                        return PeerColorActivity.this.getThemedColor(Theme.keys_avatar_nameInMessage[0]);
                    }
                    Page page = Page.this;
                    return PeerColorActivity.this.getThemedColor(Theme.keys_avatar_nameInMessage[page.selectedColor]);
                }
                PeerColorActivity peerColorActivity = PeerColorActivity.this;
                int i = Theme.key_actionBarDefault;
                if (AndroidUtilities.computePerceivedBrightness(peerColorActivity.getThemedColor(i)) > 0.8f) {
                    return Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, ((BaseFragment) PeerColorActivity.this).resourceProvider);
                }
                return AndroidUtilities.computePerceivedBrightness(PeerColorActivity.this.getThemedColor(i)) < 0.2f ? Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultTitle, ((BaseFragment) PeerColorActivity.this).resourceProvider), 0.5f) : Theme.blendOver(Theme.getColor(Theme.key_windowBackgroundWhite, ((BaseFragment) PeerColorActivity.this).resourceProvider), Theme.multAlpha(PeerColorActivity.adaptProfileEmojiColor(Theme.getColor(i, ((BaseFragment) PeerColorActivity.this).resourceProvider)), 0.7f));
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), 1073741824));
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                this.imageDrawable.detach();
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                this.imageDrawable.attach();
            }
        }

        public void showSelectStatusDialog(final SetReplyIconCell setReplyIconCell) {
            int i;
            int i2;
            int m107dp;
            if (this.selectAnimatedEmojiDialog != null || setReplyIconCell == null) {
                return;
            }
            final SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
            int min = (int) Math.min(AndroidUtilities.m107dp(330), AndroidUtilities.displaySize.y * 0.75f);
            int min2 = (int) Math.min(AndroidUtilities.m107dp(324), AndroidUtilities.displaySize.x * 0.95f);
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = setReplyIconCell.imageDrawable;
            if (setReplyIconCell.imageDrawable != null) {
                setReplyIconCell.imageDrawable.play();
                setReplyIconCell.updateImageBounds();
                Rect rect = AndroidUtilities.rectTmp2;
                rect.set(setReplyIconCell.imageDrawable.getBounds());
                if (this.type == 0) {
                    m107dp = ((-rect.centerY()) + AndroidUtilities.m107dp(12)) - min;
                } else {
                    m107dp = (-(setReplyIconCell.getHeight() - rect.centerY())) - AndroidUtilities.m107dp(16);
                }
                i = rect.centerX() - (AndroidUtilities.displaySize.x - min2);
                i2 = m107dp;
            } else {
                i = 0;
                i2 = 0;
            }
            int i3 = i2;
            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(PeerColorActivity.this, getContext(), true, Integer.valueOf(i), this.type == 0 ? 5 : 7, true, PeerColorActivity.this.getResourceProvider(), this.type == 0 ? 24 : 16, setReplyIconCell.getColor()) { // from class: org.telegram.ui.PeerColorActivity.Page.4
                @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
                protected float getScrimDrawableTranslationY() {
                    return BitmapDescriptorFactory.HUE_RED;
                }

                @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
                protected void onEmojiSelected(View view, Long l, TLRPC$Document tLRPC$Document, Integer num) {
                    Page.this.selectedEmoji = l == null ? 0L : l.longValue();
                    SetReplyIconCell setReplyIconCell2 = setReplyIconCell;
                    if (setReplyIconCell2 != null) {
                        setReplyIconCell2.update(true);
                    }
                    if (Page.this.profilePreview != null) {
                        Page.this.profilePreview.setEmoji(Page.this.selectedEmoji, true);
                    }
                    Page.this.updateMessages();
                    if (selectAnimatedEmojiDialogWindowArr[0] != null) {
                        Page.this.selectAnimatedEmojiDialog = null;
                        selectAnimatedEmojiDialogWindowArr[0].dismiss();
                    }
                }
            };
            selectAnimatedEmojiDialog.useAccentForPlus = true;
            long j = this.selectedEmoji;
            selectAnimatedEmojiDialog.setSelected(j == 0 ? null : Long.valueOf(j));
            selectAnimatedEmojiDialog.setSaveState(3);
            selectAnimatedEmojiDialog.setScrimDrawable(swapAnimatedEmojiDrawable, setReplyIconCell);
            SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, -2, -2) { // from class: org.telegram.ui.PeerColorActivity.Page.5
                @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
                public void dismiss() {
                    super.dismiss();
                    Page.this.selectAnimatedEmojiDialog = null;
                }
            };
            this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
            selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
            selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(setReplyIconCell, 0, i3, (LocaleController.isRTL ? 3 : 5) | 48);
            selectAnimatedEmojiDialogWindowArr[0].dimBehind();
        }

        public void checkResetColorButton() {
            int i;
            if (this.type != 1) {
                return;
            }
            int i2 = this.clearRow;
            updateRows();
            if (i2 >= 0 && this.clearRow < 0) {
                this.listAdapter.notifyItemRangeRemoved(i2, 2);
            } else if (i2 >= 0 || (i = this.clearRow) < 0) {
            } else {
                this.listAdapter.notifyItemRangeInserted(i, 2);
            }
        }

        private void updateRows() {
            this.rowCount = 0;
            int i = this.type;
            if (i == 0) {
                this.rowCount = 0 + 1;
                this.previewRow = 0;
            }
            int i2 = this.rowCount;
            int i3 = i2 + 1;
            this.rowCount = i3;
            this.colorPickerRow = i2;
            int i4 = i3 + 1;
            this.rowCount = i4;
            this.iconRow = i3;
            int i5 = i4 + 1;
            this.rowCount = i5;
            this.infoRow = i4;
            if (i == 1 && this.selectedColor >= 0) {
                int i6 = i5 + 1;
                this.rowCount = i6;
                this.clearRow = i5;
                this.rowCount = i6 + 1;
                this.shadowRow = i6;
            } else {
                this.clearRow = -1;
                this.shadowRow = -1;
            }
            int i7 = this.rowCount;
            this.rowCount = i7 + 1;
            this.buttonRow = i7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateMessages() {
            MessageObject messageObject;
            ThemePreviewMessagesCell themePreviewMessagesCell = this.messagesCellPreview;
            if (themePreviewMessagesCell != null) {
                ChatMessageCell[] cells = themePreviewMessagesCell.getCells();
                for (int i = 0; i < cells.length; i++) {
                    if (cells[i] != null && (messageObject = cells[i].getMessageObject()) != null) {
                        PeerColorGrid peerColorGrid = this.peerColorPicker;
                        if (peerColorGrid != null) {
                            messageObject.overrideLinkColor = peerColorGrid.getColorId();
                        }
                        messageObject.overrideLinkEmoji = this.selectedEmoji;
                        cells[i].setAvatar(messageObject);
                        cells[i].invalidate();
                    }
                }
            }
        }

        public void updateColors() {
            RecyclerListView recyclerListView = this.listView;
            PeerColorActivity peerColorActivity = PeerColorActivity.this;
            int i = Theme.key_windowBackgroundGray;
            recyclerListView.setBackgroundColor(peerColorActivity.getThemedColor(i));
            if (this.type == 1 && PeerColorActivity.this.colorBar != null) {
                PeerColorActivity.this.colorBar.setColor(((BaseFragment) PeerColorActivity.this).currentAccount, this.selectedColor, true);
            }
            ButtonWithCounterView buttonWithCounterView = this.button;
            if (buttonWithCounterView != null) {
                buttonWithCounterView.updateColors();
            }
            ThemePreviewMessagesCell themePreviewMessagesCell = this.messagesCellPreview;
            if (themePreviewMessagesCell != null) {
                themePreviewMessagesCell.invalidate();
            }
            ProfilePreview profilePreview = this.profilePreview;
            if (profilePreview != null) {
                profilePreview.setColor(this.selectedColor, false);
            }
            this.buttonContainer.setBackgroundColor(PeerColorActivity.this.getThemedColor(i));
            AndroidUtilities.forEachViews((RecyclerView) this.listView, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.PeerColorActivity$Page$$ExternalSyntheticLambda1
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    PeerColorActivity.Page.this.lambda$updateColors$2((View) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateColors$2(View view) {
            if (view instanceof PeerColorGrid) {
                view.setBackgroundColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                ((PeerColorGrid) view).updateColors();
            } else if (view instanceof TextCell) {
                view.setBackgroundColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                ((TextCell) view).updateColors();
            } else if (view instanceof SetReplyIconCell) {
                view.setBackgroundColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                ((SetReplyIconCell) view).updateColors();
            }
        }

        public void premiumChanged() {
            if (this.button == null || PeerColorActivity.this.isChannel) {
                return;
            }
            this.button.setText(!PeerColorActivity.this.getUserConfig().isPremium() ? this.buttonLocked : this.buttonUnlocked, true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2 A[LOOP:1: B:38:0x009c->B:40:0x00a2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateThemeColors() {
        /*
            r9 = this;
            android.content.Context r0 = org.telegram.messenger.ApplicationLoader.applicationContext
            java.lang.String r1 = "themeconfig"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            java.lang.String r1 = "lastDayTheme"
            java.lang.String r3 = "Blue"
            java.lang.String r1 = r0.getString(r1, r3)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getTheme(r1)
            if (r4 == 0) goto L21
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getTheme(r1)
            boolean r4 = r4.isDark()
            if (r4 == 0) goto L22
        L21:
            r1 = r3
        L22:
            java.lang.String r4 = "lastDarkTheme"
            java.lang.String r5 = "Dark Blue"
            java.lang.String r0 = r0.getString(r4, r5)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getTheme(r0)
            if (r4 == 0) goto L3a
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getTheme(r0)
            boolean r4 = r4.isDark()
            if (r4 != 0) goto L3b
        L3a:
            r0 = r5
        L3b:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r4 = org.telegram.p043ui.ActionBar.Theme.getActiveTheme()
            boolean r6 = r1.equals(r0)
            if (r6 == 0) goto L5b
            boolean r4 = r4.isDark()
            if (r4 != 0) goto L59
            boolean r4 = r1.equals(r5)
            if (r4 != 0) goto L59
            java.lang.String r4 = "Night"
            boolean r4 = r1.equals(r4)
            if (r4 == 0) goto L5c
        L59:
            r5 = r0
            goto L5d
        L5b:
            r5 = r0
        L5c:
            r3 = r1
        L5d:
            boolean r0 = r9.isDark
            if (r0 == 0) goto L66
            org.telegram.ui.ActionBar.Theme$ThemeInfo r0 = org.telegram.p043ui.ActionBar.Theme.getTheme(r5)
            goto L6a
        L66:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r0 = org.telegram.p043ui.ActionBar.Theme.getTheme(r3)
        L6a:
            android.util.SparseIntArray r1 = r9.currentColors
            r1.clear()
            r1 = 1
            java.lang.String[] r3 = new java.lang.String[r1]
            java.lang.String r4 = r0.assetName
            r5 = 0
            if (r4 == 0) goto L7c
            android.util.SparseIntArray r4 = org.telegram.p043ui.ActionBar.Theme.getThemeFileValues(r5, r4, r3)
            goto L87
        L7c:
            java.io.File r4 = new java.io.File
            java.lang.String r6 = r0.pathToFile
            r4.<init>(r6)
            android.util.SparseIntArray r4 = org.telegram.p043ui.ActionBar.Theme.getThemeFileValues(r4, r5, r3)
        L87:
            int[] r5 = org.telegram.p043ui.ActionBar.Theme.getDefaultColors()
            if (r5 == 0) goto L9b
            r6 = r2
        L8e:
            int r7 = r5.length
            if (r6 >= r7) goto L9b
            android.util.SparseIntArray r7 = r9.currentColors
            r8 = r5[r6]
            r7.put(r6, r8)
            int r6 = r6 + 1
            goto L8e
        L9b:
            r5 = r2
        L9c:
            int r6 = r4.size()
            if (r5 >= r6) goto Lb2
            android.util.SparseIntArray r6 = r9.currentColors
            int r7 = r4.keyAt(r5)
            int r8 = r4.valueAt(r5)
            r6.put(r7, r8)
            int r5 = r5 + 1
            goto L9c
        Lb2:
            org.telegram.ui.ActionBar.Theme$ThemeAccent r5 = r0.getAccent(r2)
            if (r5 == 0) goto Lbd
            android.util.SparseIntArray r6 = r9.currentColors
            r5.fillAccentColors(r4, r6)
        Lbd:
            org.telegram.ui.PeerColorActivity$Page r4 = r9.namePage
            if (r4 == 0) goto Ldf
            org.telegram.ui.Cells.ThemePreviewMessagesCell r4 = org.telegram.p043ui.PeerColorActivity.Page.access$200(r4)
            if (r4 == 0) goto Ldf
            android.util.SparseIntArray r4 = r9.currentColors
            r3 = r3[r2]
            org.telegram.ui.ActionBar.Theme$BackgroundDrawableSettings r0 = org.telegram.p043ui.ActionBar.Theme.createBackgroundDrawable(r0, r4, r3, r2, r1)
            org.telegram.ui.PeerColorActivity$Page r1 = r9.namePage
            org.telegram.ui.Cells.ThemePreviewMessagesCell r1 = org.telegram.p043ui.PeerColorActivity.Page.access$200(r1)
            android.graphics.drawable.Drawable r2 = r0.themedWallpaper
            if (r2 == 0) goto Lda
            goto Ldc
        Lda:
            android.graphics.drawable.Drawable r2 = r0.wallpaper
        Ldc:
            r1.setOverrideBackground(r2)
        Ldf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PeerColorActivity.updateThemeColors():void");
    }

    public PeerColorActivity(long j) {
        boolean isCurrentThemeDark = Theme.isCurrentThemeDark();
        this.isDark = isCurrentThemeDark;
        this.forceDark = isCurrentThemeDark;
        this.dialogId = j;
        this.isChannel = j != 0;
        this.resourceProvider = new Theme.ResourcesProvider() { // from class: org.telegram.ui.PeerColorActivity.1
            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
                Theme.applyServiceShaderMatrix(i, i2, f, f2);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ ColorFilter getAnimatedEmojiColorFilter() {
                return Theme.ResourcesProvider.CC.$default$getAnimatedEmojiColorFilter(this);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ int getColorOrDefault(int i) {
                return getColor(i);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ int getCurrentColor(int i) {
                return getColor(i);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ boolean hasGradientService() {
                return Theme.ResourcesProvider.CC.$default$hasGradientService(this);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public /* synthetic */ void setAnimatedColor(int i, int i2) {
                Theme.ResourcesProvider.CC.$default$setAnimatedColor(this, i, i2);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public int getColor(int i) {
                int indexOfKey = PeerColorActivity.this.currentColors.indexOfKey(i);
                if (indexOfKey >= 0) {
                    return PeerColorActivity.this.currentColors.valueAt(indexOfKey);
                }
                if (PeerColorActivity.this.parentResourcesProvider != null) {
                    return PeerColorActivity.this.parentResourcesProvider.getColor(i);
                }
                return Theme.getColor(i);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public Drawable getDrawable(String str) {
                if (str.equals("drawableMsgIn")) {
                    return PeerColorActivity.this.msgInDrawable;
                }
                if (str.equals("drawableMsgInSelected")) {
                    return PeerColorActivity.this.msgInDrawableSelected;
                }
                if (PeerColorActivity.this.parentResourcesProvider != null) {
                    return PeerColorActivity.this.parentResourcesProvider.getDrawable(str);
                }
                return Theme.getThemeDrawable(str);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public Paint getPaint(String str) {
                return Theme.ResourcesProvider.CC.$default$getPaint(this, str);
            }

            @Override // org.telegram.p043ui.ActionBar.Theme.ResourcesProvider
            public boolean isDark() {
                return PeerColorActivity.this.isDark;
            }
        };
        this.msgInDrawable = new Theme.MessageDrawable(0, false, false, this.resourceProvider);
        this.msgInDrawableSelected = new Theme.MessageDrawable(0, false, true, this.resourceProvider);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void setResourceProvider(Theme.ResourcesProvider resourcesProvider) {
        this.parentResourcesProvider = resourcesProvider;
    }

    public PeerColorActivity startOnProfile() {
        this.startAtProfile = true;
        return this;
    }

    public PeerColorActivity setOnApplied(BaseFragment baseFragment) {
        this.bulletinFragment = baseFragment;
        return this;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        Bulletin.addDelegate(this, new Bulletin.Delegate(this) { // from class: org.telegram.ui.PeerColorActivity.2
            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public boolean clipWithGradient(int i) {
                return true;
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ int getTopOffset(int i) {
                return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                return AndroidUtilities.m107dp(62);
            }
        });
        getMediaDataController().loadReplyIcons();
        if (MessagesController.getInstance(this.currentAccount).peerColors == null && BuildVars.DEBUG_PRIVATE_VERSION) {
            MessagesController.getInstance(this.currentAccount).loadAppConfig(true);
        }
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.namePage = new Page(context, 0);
        this.profilePage = new Page(context, 1);
        this.actionBar.setCastShadows(false);
        this.actionBar.setVisibility(8);
        this.actionBar.setAllowOverlayTitle(false);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.PeerColorActivity.3
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                if (PeerColorActivity.this.actionBarContainer != null) {
                    ((ViewGroup.MarginLayoutParams) PeerColorActivity.this.actionBarContainer.getLayoutParams()).height = C3704ActionBar.getCurrentActionBarHeight();
                    ((ViewGroup.MarginLayoutParams) PeerColorActivity.this.actionBarContainer.getLayoutParams()).topMargin = AndroidUtilities.statusBarHeight;
                }
                super.onMeasure(i, i2);
            }
        };
        frameLayout.setFitsSystemWindows(true);
        ColoredActionBar coloredActionBar = new ColoredActionBar(context, this.resourceProvider) { // from class: org.telegram.ui.PeerColorActivity.4
            private int lastBtnColor = 0;

            @Override // org.telegram.p043ui.PeerColorActivity.ColoredActionBar
            protected void onUpdateColor() {
                PeerColorActivity.this.updateLightStatusBar();
                updateActionBarButtonsColor();
                if (PeerColorActivity.this.tabsView != null) {
                    PeerColorActivity.this.tabsView.setBackgroundColor(getTabsViewBackgroundColor());
                }
            }

            public void updateActionBarButtonsColor() {
                int actionBarButtonColor = getActionBarButtonColor();
                if (this.lastBtnColor != actionBarButtonColor) {
                    if (PeerColorActivity.this.backButton != null) {
                        this.lastBtnColor = actionBarButtonColor;
                        PeerColorActivity.this.backButton.setColorFilter(new PorterDuffColorFilter(actionBarButtonColor, PorterDuff.Mode.SRC_IN));
                    }
                    if (PeerColorActivity.this.dayNightItem != null) {
                        this.lastBtnColor = actionBarButtonColor;
                        PeerColorActivity.this.dayNightItem.setColorFilter(new PorterDuffColorFilter(actionBarButtonColor, PorterDuff.Mode.SRC_IN));
                    }
                }
            }
        };
        this.colorBar = coloredActionBar;
        Page page = this.profilePage;
        if (page != null) {
            coloredActionBar.setColor(this.currentAccount, page.selectedColor, false);
        }
        frameLayout.addView(this.colorBar, LayoutHelper.createFrame(-1, -2, 55));
        ViewPagerFixed viewPagerFixed = new ViewPagerFixed(context) { // from class: org.telegram.ui.PeerColorActivity.5
            @Override // org.telegram.p043ui.Components.ViewPagerFixed
            protected void onTabAnimationUpdate(boolean z) {
                PeerColorActivity.this.tabsView.setSelected(PeerColorActivity.this.viewPager.getPositionAnimated());
                PeerColorActivity.this.colorBar.setProgressToGradient(PeerColorActivity.this.viewPager.getPositionAnimated());
            }
        };
        this.viewPager = viewPagerFixed;
        viewPagerFixed.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.PeerColorActivity.6
            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i, int i2) {
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return 2;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i) {
                return i;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public View createView(int i) {
                if (i == 0) {
                    return PeerColorActivity.this.namePage;
                }
                if (i == 1) {
                    return PeerColorActivity.this.profilePage;
                }
                return null;
            }
        });
        frameLayout.addView(this.viewPager, LayoutHelper.createFrame(-1, -1, 119));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.actionBarContainer = frameLayout2;
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, -2, 55));
        if (!this.isChannel) {
            FilledTabsView filledTabsView = new FilledTabsView(context);
            this.tabsView = filledTabsView;
            CharSequence[] charSequenceArr = new CharSequence[2];
            charSequenceArr[0] = LocaleController.getString(this.isChannel ? C3632R.string.ChannelColorTabName : C3632R.string.UserColorTabName);
            charSequenceArr[1] = LocaleController.getString(this.isChannel ? C3632R.string.ChannelColorTabProfile : C3632R.string.UserColorTabProfile);
            filledTabsView.setTabs(charSequenceArr);
            this.tabsView.onTabSelected(new Utilities.Callback() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    PeerColorActivity.this.lambda$createView$0((Integer) obj);
                }
            });
            this.actionBarContainer.addView(this.tabsView, LayoutHelper.createFrame(-1, 40, 17));
        } else {
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.titleView = simpleTextView;
            simpleTextView.setText(LocaleController.getString(C3632R.string.ChannelColorTitle2));
            this.titleView.setEllipsizeByGradient(true);
            this.titleView.setTextSize(20);
            this.titleView.setTextColor(getThemedColor(Theme.key_actionBarDefaultTitle));
            this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.actionBarContainer.addView(this.titleView, LayoutHelper.createFrame(-2, -2, 19, 72, 0, 72, 0));
        }
        if (this.startAtProfile) {
            this.viewPager.setPosition(1);
            FilledTabsView filledTabsView2 = this.tabsView;
            if (filledTabsView2 != null) {
                filledTabsView2.setSelected(1.0f);
            }
            ColoredActionBar coloredActionBar2 = this.colorBar;
            if (coloredActionBar2 != null) {
                coloredActionBar2.setProgressToGradient(1.0f);
                updateLightStatusBar();
            }
        }
        ImageView imageView = new ImageView(context);
        this.backButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView2 = this.backButton;
        int i = Theme.key_actionBarWhiteSelector;
        imageView2.setBackground(Theme.createSelectorDrawable(getThemedColor(i), 1));
        this.backButton.setImageResource(C3632R.C3634drawable.ic_ab_back);
        this.backButton.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        this.backButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerColorActivity.this.lambda$createView$1(view);
            }
        });
        this.actionBarContainer.addView(this.backButton, LayoutHelper.createFrame(54, 54, 19));
        int i2 = C3632R.raw.sun;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i2, "" + i2, AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), true, null);
        this.sunDrawable = rLottieDrawable;
        rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
        if (!this.isDark) {
            this.sunDrawable.setCustomEndFrame(0);
            this.sunDrawable.setCurrentFrame(0);
        } else {
            this.sunDrawable.setCurrentFrame(35);
            this.sunDrawable.setCustomEndFrame(36);
        }
        this.sunDrawable.beginApplyLayerColors();
        int color = Theme.getColor(Theme.key_chats_menuName);
        this.sunDrawable.setLayerColor("Sunny.**", color);
        this.sunDrawable.setLayerColor("Path 6.**", color);
        this.sunDrawable.setLayerColor("Path.**", color);
        this.sunDrawable.setLayerColor("Path 5.**", color);
        this.sunDrawable.commitApplyLayerColors();
        ImageView imageView3 = new ImageView(context);
        this.dayNightItem = imageView3;
        imageView3.setScaleType(ImageView.ScaleType.CENTER);
        this.dayNightItem.setBackground(Theme.createSelectorDrawable(getThemedColor(i), 1));
        this.dayNightItem.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        this.dayNightItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerColorActivity.this.lambda$createView$2(view);
            }
        });
        this.actionBarContainer.addView(this.dayNightItem, LayoutHelper.createFrame(54, 54, 21));
        this.dayNightItem.setImageDrawable(this.sunDrawable);
        this.colorBar.updateColors();
        this.contentView = frameLayout;
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(Integer num) {
        ViewPagerFixed viewPagerFixed = this.viewPager;
        if (viewPagerFixed != null) {
            viewPagerFixed.scrollToPosition(num.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        if (onBackPressed()) {
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        toggleTheme();
    }

    public boolean hasUnsavedChanged() {
        return this.namePage.hasUnsavedChanged() || this.profilePage.hasUnsavedChanged();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (!this.isChannel && hasUnsavedChanged() && getUserConfig().isPremium()) {
            showUnsavedAlert();
            return false;
        }
        return super.onBackPressed();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        if (!this.isChannel && hasUnsavedChanged() && getUserConfig().isPremium()) {
            return false;
        }
        return super.isSwipeBackEnabled(motionEvent);
    }

    private void showUnsavedAlert() {
        if (getVisibleDialog() != null) {
            return;
        }
        AlertDialog create = new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(this.isChannel ? C3632R.string.ChannelColorUnsaved : C3632R.string.UserColorUnsaved)).setMessage(LocaleController.getString(this.isChannel ? C3632R.string.ChannelColorUnsavedMessage : C3632R.string.UserColorUnsavedMessage)).setNegativeButton(LocaleController.getString(C3632R.string.Dismiss), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PeerColorActivity.this.lambda$showUnsavedAlert$3(dialogInterface, i);
            }
        }).setPositiveButton(LocaleController.getString(C3632R.string.ApplyTheme), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PeerColorActivity.this.lambda$showUnsavedAlert$4(dialogInterface, i);
            }
        }).create();
        showDialog(create);
        ((TextView) create.getButton(-2)).setTextColor(getThemedColor(Theme.key_text_RedBold));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnsavedAlert$3(DialogInterface dialogInterface, int i) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnsavedAlert$4(DialogInterface dialogInterface, int i) {
        buttonClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buttonClick() {
        if (this.loading) {
            return;
        }
        if (this.isChannel) {
            finishFragment();
        } else if (!getUserConfig().isPremium()) {
            showDialog(new PremiumFeatureBottomSheet(this, 23, true));
            return;
        }
        apply();
        finishFragment();
        showBulletin();
    }

    private void apply() {
        if (this.applying) {
            return;
        }
        if (this.isChannel || getUserConfig().isPremium()) {
            if (this.isChannel) {
                finishFragment();
            } else {
                TLRPC$User currentUser = getUserConfig().getCurrentUser();
                if (currentUser.color == null) {
                    TLRPC$TL_peerColor tLRPC$TL_peerColor = new TLRPC$TL_peerColor();
                    currentUser.color = tLRPC$TL_peerColor;
                    tLRPC$TL_peerColor.color = (int) (currentUser.f1751id % 7);
                }
                if (this.namePage.selectedColor != UserObject.getColorId(currentUser) || this.namePage.selectedEmoji != UserObject.getEmojiId(currentUser)) {
                    this.applyingName = true;
                    TLRPC$TL_account_updateColor tLRPC$TL_account_updateColor = new TLRPC$TL_account_updateColor();
                    currentUser.flags2 |= 256;
                    TLRPC$TL_peerColor tLRPC$TL_peerColor2 = currentUser.color;
                    tLRPC$TL_peerColor2.flags |= 1;
                    tLRPC$TL_account_updateColor.flags |= 4;
                    int i = this.namePage.selectedColor;
                    tLRPC$TL_peerColor2.color = i;
                    tLRPC$TL_account_updateColor.color = i;
                    if (this.namePage.selectedEmoji != 0) {
                        tLRPC$TL_account_updateColor.flags |= 1;
                        TLRPC$TL_peerColor tLRPC$TL_peerColor3 = currentUser.color;
                        tLRPC$TL_peerColor3.flags |= 2;
                        long j = this.namePage.selectedEmoji;
                        tLRPC$TL_peerColor3.background_emoji_id = j;
                        tLRPC$TL_account_updateColor.background_emoji_id = j;
                    } else {
                        TLRPC$TL_peerColor tLRPC$TL_peerColor4 = currentUser.color;
                        tLRPC$TL_peerColor4.flags &= -3;
                        tLRPC$TL_peerColor4.background_emoji_id = 0L;
                    }
                    getConnectionsManager().sendRequest(tLRPC$TL_account_updateColor, null);
                }
                if (this.profilePage.selectedColor != UserObject.getProfileColorId(currentUser) || this.profilePage.selectedEmoji != UserObject.getProfileEmojiId(currentUser)) {
                    this.applyingProfile = true;
                    if (currentUser.profile_color == null) {
                        currentUser.profile_color = new TLRPC$TL_peerColor();
                    }
                    TLRPC$TL_account_updateColor tLRPC$TL_account_updateColor2 = new TLRPC$TL_account_updateColor();
                    tLRPC$TL_account_updateColor2.for_profile = true;
                    currentUser.flags2 |= 512;
                    if (this.profilePage.selectedColor < 0) {
                        currentUser.profile_color.flags &= -2;
                    } else {
                        TLRPC$TL_peerColor tLRPC$TL_peerColor5 = currentUser.profile_color;
                        tLRPC$TL_peerColor5.flags |= 1;
                        tLRPC$TL_account_updateColor2.flags |= 4;
                        int i2 = this.profilePage.selectedColor;
                        tLRPC$TL_peerColor5.color = i2;
                        tLRPC$TL_account_updateColor2.color = i2;
                    }
                    if (this.profilePage.selectedEmoji != 0) {
                        tLRPC$TL_account_updateColor2.flags |= 1;
                        TLRPC$TL_peerColor tLRPC$TL_peerColor6 = currentUser.profile_color;
                        tLRPC$TL_peerColor6.flags |= 2;
                        long j2 = this.profilePage.selectedEmoji;
                        tLRPC$TL_peerColor6.background_emoji_id = j2;
                        tLRPC$TL_account_updateColor2.background_emoji_id = j2;
                    } else {
                        TLRPC$TL_peerColor tLRPC$TL_peerColor7 = currentUser.profile_color;
                        tLRPC$TL_peerColor7.flags &= -3;
                        tLRPC$TL_peerColor7.background_emoji_id = 0L;
                    }
                    getConnectionsManager().sendRequest(tLRPC$TL_account_updateColor2, null);
                }
                getMessagesController().putUser(currentUser, false);
                getUserConfig().saveConfig(true);
                finishFragment();
                showBulletin();
            }
            this.applying = true;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_EMOJI_STATUS));
        }
    }

    private void showBulletin() {
        if (this.bulletinFragment != null) {
            if (this.applyingName && (!this.applyingProfile || getCurrentPage() == this.namePage)) {
                BulletinFactory.m65of(this.bulletinFragment).createSimpleBulletin(PeerColorDrawable.from(this.currentAccount, this.namePage.selectedColor), LocaleController.getString(this.isChannel ? C3632R.string.ChannelColorApplied : C3632R.string.UserColorApplied)).show();
            } else if (this.applyingProfile && (!this.applyingName || getCurrentPage() == this.profilePage)) {
                if (this.profilePage.selectedColor < 0) {
                    if (this.profilePage.selectedEmoji != 0) {
                        BulletinFactory.m65of(this.bulletinFragment).createStaticEmojiBulletin(AnimatedEmojiDrawable.findDocument(this.currentAccount, this.profilePage.selectedEmoji), LocaleController.getString(this.isChannel ? C3632R.string.ChannelProfileColorEmojiApplied : C3632R.string.UserProfileColorEmojiApplied)).show();
                    } else {
                        BulletinFactory.m65of(this.bulletinFragment).createSimpleBulletin(C3632R.raw.contact_check, LocaleController.getString(this.isChannel ? C3632R.string.ChannelProfileColorResetApplied : C3632R.string.UserProfileColorResetApplied)).show();
                    }
                } else {
                    BulletinFactory.m65of(this.bulletinFragment).createSimpleBulletin(PeerColorDrawable.fromProfile(this.currentAccount, this.profilePage.selectedColor), LocaleController.getString(this.isChannel ? C3632R.string.ChannelProfileColorApplied : C3632R.string.UserProfileColorApplied)).show();
                }
            }
            this.bulletinFragment = null;
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentClosed() {
        super.onFragmentClosed();
        Bulletin.removeDelegate(this);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        return SimpleThemeDescription.createThemeDescriptions(new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                PeerColorActivity.this.updateColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundWhite, Theme.key_windowBackgroundWhiteBlackText, Theme.key_windowBackgroundWhiteGrayText2, Theme.key_listSelector, Theme.key_windowBackgroundGray, Theme.key_windowBackgroundWhiteGrayText4, Theme.key_text_RedRegular, Theme.key_windowBackgroundChecked, Theme.key_windowBackgroundCheckText, Theme.key_switchTrackBlue, Theme.key_switchTrackBlueChecked, Theme.key_switchTrackBlueThumb, Theme.key_switchTrackBlueThumbChecked);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        this.contentView.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        SimpleTextView simpleTextView = this.titleView;
        if (simpleTextView != null) {
            simpleTextView.setTextColor(getThemedColor(Theme.key_actionBarDefaultTitle));
        }
        this.namePage.updateColors();
        this.profilePage.updateColors();
        ColoredActionBar coloredActionBar = this.colorBar;
        if (coloredActionBar != null) {
            coloredActionBar.updateColors();
        }
        setNavigationBarColor(getNavigationBarColor());
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i2 == this.currentAccount && i == NotificationCenter.currentUserPremiumStatusChanged) {
            this.namePage.premiumChanged();
            this.profilePage.premiumChanged();
        }
    }

    /* renamed from: org.telegram.ui.PeerColorActivity$LevelLock */
    /* loaded from: classes5.dex */
    public static class LevelLock extends Drawable {
        private final PremiumGradient.PremiumGradientTools gradientTools;
        private final Drawable lock;
        private final Theme.ResourcesProvider resourcesProvider;
        private final Text text;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public LevelLock(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            this(context, false, i, resourcesProvider);
        }

        public LevelLock(Context context, boolean z, int i, Theme.ResourcesProvider resourcesProvider) {
            this.resourcesProvider = resourcesProvider;
            this.text = new Text(LocaleController.formatPluralString(z ? "BoostLevelPlus" : "BoostLevel", i, new Object[0]), 12.0f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.mini_switch_lock).mutate();
            this.lock = mutate;
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            this.gradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, -1, -1, -1, resourcesProvider);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            int i = getBounds().left;
            int centerY = getBounds().centerY();
            RectF rectF = AndroidUtilities.rectTmp;
            float f = centerY;
            rectF.set(i, f - (getIntrinsicHeight() / 2.0f), getIntrinsicWidth() + i, (getIntrinsicHeight() / 2.0f) + f);
            this.gradientTools.gradientMatrix(rectF);
            canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10), this.gradientTools.paint);
            this.lock.setBounds(AndroidUtilities.m108dp(3.33f) + i, (int) (f - ((this.lock.getIntrinsicHeight() * 0.875f) / 2.0f)), (int) (AndroidUtilities.m108dp(3.33f) + i + (this.lock.getIntrinsicWidth() * 0.875f)), (int) (((this.lock.getIntrinsicHeight() * 0.875f) / 2.0f) + f));
            this.lock.draw(canvas);
            this.text.draw(canvas, i + AndroidUtilities.m108dp(3.66f) + (this.lock.getIntrinsicWidth() * 0.875f), f, -1, 1.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return (int) (AndroidUtilities.m108dp(9.66f) + (this.lock.getIntrinsicWidth() * 0.875f) + this.text.getWidth());
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.m108dp(18.33f);
        }
    }

    /* renamed from: org.telegram.ui.PeerColorActivity$ChangeNameColorCell */
    /* loaded from: classes5.dex */
    public static class ChangeNameColorCell extends View {
        private final Text buttonText;
        private PeerColorDrawable color1Drawable;
        private PeerColorDrawable color2Drawable;
        private final int currentAccount;
        private final Drawable drawable;
        private final boolean isChannel;
        private LevelLock lock;
        private boolean needDivider;
        private final Theme.ResourcesProvider resourcesProvider;
        private Text userText;
        private final Paint userTextBackgroundPaint;
        private int userTextColorKey;

        public ChangeNameColorCell(int i, long j, Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            int i2;
            this.userTextBackgroundPaint = new Paint(1);
            this.userTextColorKey = -1;
            this.currentAccount = i;
            boolean z = j < 0;
            this.isChannel = z;
            this.resourcesProvider = resourcesProvider;
            Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.msg_palette).mutate();
            this.drawable = mutate;
            mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider), PorterDuff.Mode.SRC_IN));
            CharSequence string = LocaleController.getString(z ? C3632R.string.ChangeChannelNameColor2 : C3632R.string.ChangeUserNameColor);
            if (z && MessagesController.getInstance(i).getMainSettings().getInt("boostingappearance", 0) < 3) {
                MessagesController messagesController = MessagesController.getInstance(i);
                int i3 = Integer.MAX_VALUE;
                MessagesController.PeerColors peerColors = messagesController.peerColors;
                if (peerColors != null) {
                    int min = Math.min(Integer.MAX_VALUE, peerColors.maxLevel());
                    int max = Math.max(0, messagesController.peerColors.maxLevel());
                    i3 = Math.min(min, messagesController.peerColors.minLevel());
                    i2 = Math.max(max, messagesController.peerColors.minLevel());
                } else {
                    i2 = 0;
                }
                int min2 = Math.min(i3, messagesController.channelBgIconLevelMin);
                int min3 = Math.min(i2, messagesController.channelBgIconLevelMin);
                MessagesController.PeerColors peerColors2 = messagesController.profilePeerColors;
                if (peerColors2 != null) {
                    int min4 = Math.min(min2, peerColors2.maxLevel());
                    int max2 = Math.max(min3, messagesController.profilePeerColors.maxLevel());
                    min2 = Math.min(min4, messagesController.profilePeerColors.minLevel());
                    min3 = Math.max(max2, messagesController.profilePeerColors.minLevel());
                }
                int min5 = Math.min(min2, messagesController.channelProfileIconLevelMin);
                int max3 = Math.max(min3, messagesController.channelProfileIconLevelMin);
                int min6 = Math.min(min5, messagesController.channelEmojiStatusLevelMin);
                int max4 = Math.max(max3, messagesController.channelEmojiStatusLevelMin);
                int min7 = Math.min(min6, messagesController.channelWallpaperLevelMin);
                int max5 = Math.max(max4, messagesController.channelWallpaperLevelMin);
                int min8 = Math.min(min7, messagesController.channelCustomWallpaperLevelMin);
                int max6 = Math.max(max5, messagesController.channelCustomWallpaperLevelMin);
                TLRPC$Chat chat = messagesController.getChat(Long.valueOf(-j));
                int i4 = chat != null ? chat.level : 0;
                if (i4 < max6) {
                    this.lock = new LevelLock(context, true, Math.max(i4, min8), resourcesProvider);
                }
            }
            if (z && this.lock == null) {
                string = TextCell.applyNewSpan(string);
            }
            this.buttonText = new Text(string, 16.0f);
            updateColors();
        }

        public void updateColors() {
            int i;
            this.drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(this.isChannel ? Theme.key_windowBackgroundWhiteGrayIcon : Theme.key_windowBackgroundWhiteBlueText4, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            this.buttonText.setColor(Theme.getColor(this.isChannel ? Theme.key_windowBackgroundWhiteBlackText : Theme.key_windowBackgroundWhiteBlueText4, this.resourcesProvider));
            if (this.userText == null || this.userTextBackgroundPaint == null || (i = this.userTextColorKey) == -1) {
                return;
            }
            int color = Theme.getColor(i, this.resourcesProvider);
            this.userText.setColor(color);
            this.userTextBackgroundPaint.setColor(Theme.multAlpha(color, 0.1f));
        }

        public void set(TLRPC$Chat tLRPC$Chat, boolean z) {
            int color;
            if (tLRPC$Chat == null) {
                return;
            }
            this.needDivider = z;
            this.userText = new Text(Emoji.replaceEmoji(tLRPC$Chat.title, Theme.chat_msgTextPaint.getFontMetricsInt(), false), 13.0f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            int colorId = ChatObject.getColorId(tLRPC$Chat);
            if (colorId < 7) {
                int i = Theme.keys_avatar_nameInMessage[colorId];
                this.userTextColorKey = i;
                color = Theme.getColor(i, this.resourcesProvider);
            } else {
                MessagesController.PeerColors peerColors = MessagesController.getInstance(UserConfig.selectedAccount).peerColors;
                MessagesController.PeerColor color2 = peerColors == null ? null : peerColors.getColor(colorId);
                if (color2 != null) {
                    this.userTextColorKey = -1;
                    color = color2.getColor1();
                } else {
                    int i2 = Theme.keys_avatar_nameInMessage[0];
                    this.userTextColorKey = i2;
                    color = Theme.getColor(i2, this.resourcesProvider);
                }
            }
            this.userText.setColor(color);
            this.userTextBackgroundPaint.setColor(Theme.multAlpha(color, 0.1f));
            this.color1Drawable = PeerColorDrawable.from(this.currentAccount, colorId).setRadius(AndroidUtilities.m107dp(11));
            this.color2Drawable = ChatObject.getProfileColorId(tLRPC$Chat) >= 0 ? PeerColorDrawable.fromProfile(this.currentAccount, ChatObject.getProfileColorId(tLRPC$Chat)).setRadius(AndroidUtilities.m107dp(11)) : null;
        }

        public void set(TLRPC$User tLRPC$User) {
            int color;
            if (tLRPC$User == null) {
                return;
            }
            String str = tLRPC$User.first_name;
            String trim = str == null ? "" : str.trim();
            int indexOf = trim.indexOf(" ");
            if (indexOf > 0) {
                trim = trim.substring(0, indexOf);
            }
            this.userText = new Text(Emoji.replaceEmoji(trim, Theme.chat_msgTextPaint.getFontMetricsInt(), false), 13.0f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            int colorId = UserObject.getColorId(tLRPC$User);
            if (colorId < 7) {
                int i = Theme.keys_avatar_nameInMessage[colorId];
                this.userTextColorKey = i;
                color = Theme.getColor(i, this.resourcesProvider);
            } else {
                MessagesController.PeerColors peerColors = MessagesController.getInstance(UserConfig.selectedAccount).peerColors;
                MessagesController.PeerColor color2 = peerColors == null ? null : peerColors.getColor(colorId);
                if (color2 != null) {
                    this.userTextColorKey = -1;
                    color = color2.getColor1();
                } else {
                    int i2 = Theme.keys_avatar_nameInMessage[0];
                    this.userTextColorKey = i2;
                    color = Theme.getColor(i2, this.resourcesProvider);
                }
            }
            this.userText.setColor(color);
            this.userTextBackgroundPaint.setColor(Theme.multAlpha(color, 0.1f));
            this.color1Drawable = PeerColorDrawable.from(this.currentAccount, colorId).setRadius(AndroidUtilities.m107dp(11));
            this.color2Drawable = UserObject.getProfileColorId(tLRPC$User) >= 0 ? PeerColorDrawable.fromProfile(this.currentAccount, UserObject.getProfileColorId(tLRPC$User)).setRadius(AndroidUtilities.m107dp(11)) : null;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50) + (this.needDivider ? 1 : 0), 1073741824));
        }

        private int rtl(int i) {
            return LocaleController.isRTL ? getMeasuredWidth() - i : i;
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            LevelLock levelLock;
            this.drawable.setBounds(rtl(AndroidUtilities.m107dp(64) / 2) - (this.drawable.getIntrinsicWidth() / 2), (getMeasuredHeight() / 2) - (this.drawable.getIntrinsicHeight() / 2), rtl(AndroidUtilities.m107dp(64) / 2) + (this.drawable.getIntrinsicWidth() / 2), (getMeasuredHeight() / 2) + (this.drawable.getIntrinsicHeight() / 2));
            this.drawable.draw(canvas);
            Text text = this.buttonText;
            int measuredWidth = getMeasuredWidth() - AndroidUtilities.m107dp(171);
            LevelLock levelLock2 = this.lock;
            text.ellipsize(measuredWidth - (levelLock2 != null ? levelLock2.getIntrinsicWidth() + AndroidUtilities.m107dp(8) : 0));
            float measuredWidth2 = LocaleController.isRTL ? (getMeasuredWidth() - this.buttonText.getWidth()) - AndroidUtilities.m107dp(71) : AndroidUtilities.m107dp(71);
            this.buttonText.draw(canvas, measuredWidth2, getMeasuredHeight() / 2.0f);
            if (this.lock != null) {
                int width = (int) (measuredWidth2 + this.buttonText.getWidth() + AndroidUtilities.m107dp(6));
                this.lock.setBounds(width, 0, width, getHeight());
                this.lock.draw(canvas);
            }
            if (this.color1Drawable != null && this.color2Drawable != null) {
                int m107dp = LocaleController.isRTL ? AndroidUtilities.m107dp(58) : getMeasuredWidth() - AndroidUtilities.m107dp(24);
                this.color2Drawable.setBounds(m107dp - AndroidUtilities.m107dp(11), (getMeasuredHeight() - AndroidUtilities.m107dp(11)) / 2, m107dp, (getMeasuredHeight() + AndroidUtilities.m107dp(11)) / 2);
                PeerColorDrawable peerColorDrawable = this.color2Drawable;
                float dpf2 = AndroidUtilities.dpf2(3.0f);
                int i = Theme.key_windowBackgroundWhite;
                peerColorDrawable.stroke(dpf2, Theme.getColor(i, this.resourcesProvider));
                this.color2Drawable.draw(canvas);
                int m107dp2 = m107dp - AndroidUtilities.m107dp(18);
                this.color1Drawable.setBounds(m107dp2 - AndroidUtilities.m107dp(11), (getMeasuredHeight() - AndroidUtilities.m107dp(11)) / 2, m107dp2, (getMeasuredHeight() + AndroidUtilities.m107dp(11)) / 2);
                this.color1Drawable.stroke(AndroidUtilities.dpf2(3.0f), Theme.getColor(i, this.resourcesProvider));
                this.color1Drawable.draw(canvas);
            } else if (this.userText != null) {
                int measuredWidth3 = (int) ((getMeasuredWidth() - AndroidUtilities.m107dp(116)) - Math.min(this.buttonText.getWidth() + (this.lock == null ? 0 : levelLock.getIntrinsicWidth() + AndroidUtilities.m107dp(12)), getMeasuredWidth() - AndroidUtilities.m107dp(164)));
                int min = (int) Math.min(this.userText.getWidth(), measuredWidth3);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(LocaleController.isRTL ? AndroidUtilities.m107dp(15) : (getMeasuredWidth() - AndroidUtilities.m107dp(33)) - min, (getMeasuredHeight() - AndroidUtilities.m107dp(22)) / 2.0f, LocaleController.isRTL ? AndroidUtilities.m107dp(33) + min : getMeasuredWidth() - AndroidUtilities.m107dp(15), (getMeasuredHeight() + AndroidUtilities.m107dp(22)) / 2.0f);
                canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), this.userTextBackgroundPaint);
                this.userText.ellipsize(measuredWidth3).draw(canvas, LocaleController.isRTL ? AndroidUtilities.m107dp(24) : (getMeasuredWidth() - AndroidUtilities.m107dp(24)) - min, getMeasuredHeight() / 2.0f);
            }
            if (this.needDivider) {
                Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
                Paint paint = resourcesProvider != null ? resourcesProvider.getPaint("paintDivider") : null;
                if (paint == null) {
                    paint = Theme.dividerPaint;
                }
                canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m107dp(64), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m107dp(64) : 0), getMeasuredHeight() - 1, paint);
            }
        }
    }

    /* renamed from: org.telegram.ui.PeerColorActivity$PeerColorGrid */
    /* loaded from: classes5.dex */
    public static class PeerColorGrid extends View {
        private final Paint backgroundPaint;
        private ColorButton[] buttons;
        private final int currentAccount;
        private final Paint dividerPaint;
        private boolean needDivider;
        private Utilities.Callback<Integer> onColorClick;
        final int[] order;
        private ColorButton pressedButton;
        private final Theme.ResourcesProvider resourcesProvider;
        private int selectedColorId;
        private final int type;

        /* renamed from: org.telegram.ui.PeerColorActivity$PeerColorGrid$ColorButton */
        /* loaded from: classes5.dex */
        public class ColorButton {
            private final ButtonBounce bounce;
            private boolean hasColor2;
            private boolean hasColor3;

            /* renamed from: id */
            public int f1993id;
            private boolean selected;
            private final AnimatedFloat selectedT;
            private final Paint paint1 = new Paint(1);
            private final Paint paint2 = new Paint(1);
            private final Paint paint3 = new Paint(1);
            private final Path circlePath = new Path();
            private final Path color2Path = new Path();
            private final RectF bounds = new RectF();
            public final RectF clickBounds = new RectF();

            public ColorButton() {
                this.bounce = new ButtonBounce(PeerColorGrid.this);
                this.selectedT = new AnimatedFloat(PeerColorGrid.this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            }

            public void set(int i) {
                this.hasColor3 = false;
                this.hasColor2 = false;
                this.paint1.setColor(i);
            }

            public void set(MessagesController.PeerColor peerColor) {
                if (peerColor == null) {
                    return;
                }
                boolean isCurrentThemeDark = PeerColorGrid.this.resourcesProvider == null ? Theme.isCurrentThemeDark() : PeerColorGrid.this.resourcesProvider.isDark();
                if (PeerColorGrid.this.type != 0) {
                    this.paint1.setColor(peerColor.getColor(0, PeerColorGrid.this.resourcesProvider));
                    this.paint2.setColor(peerColor.hasColor6(isCurrentThemeDark) ? peerColor.getColor(1, PeerColorGrid.this.resourcesProvider) : peerColor.getColor(0, PeerColorGrid.this.resourcesProvider));
                    this.hasColor2 = peerColor.hasColor6(isCurrentThemeDark);
                    this.hasColor3 = false;
                    return;
                }
                if (!isCurrentThemeDark || !peerColor.hasColor2() || peerColor.hasColor3()) {
                    this.paint1.setColor(peerColor.getColor(0, PeerColorGrid.this.resourcesProvider));
                    this.paint2.setColor(peerColor.getColor(1, PeerColorGrid.this.resourcesProvider));
                } else {
                    this.paint1.setColor(peerColor.getColor(1, PeerColorGrid.this.resourcesProvider));
                    this.paint2.setColor(peerColor.getColor(0, PeerColorGrid.this.resourcesProvider));
                }
                this.paint3.setColor(peerColor.getColor(2, PeerColorGrid.this.resourcesProvider));
                this.hasColor2 = peerColor.hasColor2(isCurrentThemeDark);
                this.hasColor3 = peerColor.hasColor3(isCurrentThemeDark);
            }

            public void setSelected(boolean z, boolean z2) {
                this.selected = z;
                if (!z2) {
                    this.selectedT.set(z, true);
                }
                PeerColorGrid.this.invalidate();
            }

            public void layout(RectF rectF) {
                this.bounds.set(rectF);
            }

            public void layoutClickBounds(RectF rectF) {
                this.clickBounds.set(rectF);
            }

            protected void draw(Canvas canvas) {
                canvas.save();
                float scale = this.bounce.getScale(0.05f);
                canvas.scale(scale, scale, this.bounds.centerX(), this.bounds.centerY());
                canvas.save();
                this.circlePath.rewind();
                this.circlePath.addCircle(this.bounds.centerX(), this.bounds.centerY(), Math.min(this.bounds.height() / 2.0f, this.bounds.width() / 2.0f), Path.Direction.CW);
                canvas.clipPath(this.circlePath);
                canvas.drawPaint(this.paint1);
                if (this.hasColor2) {
                    this.color2Path.rewind();
                    Path path = this.color2Path;
                    RectF rectF = this.bounds;
                    path.moveTo(rectF.right, rectF.top);
                    Path path2 = this.color2Path;
                    RectF rectF2 = this.bounds;
                    path2.lineTo(rectF2.right, rectF2.bottom);
                    Path path3 = this.color2Path;
                    RectF rectF3 = this.bounds;
                    path3.lineTo(rectF3.left, rectF3.bottom);
                    this.color2Path.close();
                    canvas.drawPath(this.color2Path, this.paint2);
                }
                canvas.restore();
                if (this.hasColor3) {
                    canvas.save();
                    RectF rectF4 = AndroidUtilities.rectTmp;
                    float width = (this.bounds.width() * 0.315f) / 2.0f;
                    rectF4.set(this.bounds.centerX() - width, this.bounds.centerY() - width, this.bounds.centerX() + width, this.bounds.centerY() + width);
                    canvas.rotate(45.0f, this.bounds.centerX(), this.bounds.centerY());
                    canvas.drawRoundRect(rectF4, AndroidUtilities.m108dp(2.33f), AndroidUtilities.m108dp(2.33f), this.paint3);
                    canvas.restore();
                }
                float f = this.selectedT.set(this.selected);
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    PeerColorGrid.this.backgroundPaint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
                    PeerColorGrid.this.backgroundPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, PeerColorGrid.this.resourcesProvider));
                    canvas.drawCircle(this.bounds.centerX(), this.bounds.centerY(), Math.min(this.bounds.height() / 2.0f, this.bounds.width() / 2.0f) + (PeerColorGrid.this.backgroundPaint.getStrokeWidth() * AndroidUtilities.lerp(0.5f, -2.0f, f)), PeerColorGrid.this.backgroundPaint);
                }
                canvas.restore();
            }

            public void setPressed(boolean z) {
                this.bounce.setPressed(z);
            }
        }

        public PeerColorGrid(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.order = new int[]{5, 3, 1, 0, 2, 4, 6};
            this.dividerPaint = new Paint(1);
            this.needDivider = true;
            this.selectedColorId = 0;
            this.type = i;
            this.currentAccount = i2;
            this.resourcesProvider = resourcesProvider;
        }

        public void updateColors() {
            if (this.buttons == null) {
                return;
            }
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            MessagesController.PeerColors peerColors = this.type == 0 ? messagesController.peerColors : messagesController.profilePeerColors;
            int i = 0;
            while (true) {
                ColorButton[] colorButtonArr = this.buttons;
                if (i < colorButtonArr.length) {
                    if (i < 7 && this.type == 0) {
                        ColorButton colorButton = colorButtonArr[i];
                        int[] iArr = this.order;
                        colorButton.f1993id = iArr[i];
                        colorButtonArr[i].set(Theme.getColor(Theme.keys_avatar_nameInMessage[iArr[i]], this.resourcesProvider));
                    } else if (peerColors != null && i >= 0 && i < peerColors.colors.size()) {
                        this.buttons[i].f1993id = peerColors.colors.get(i).f1540id;
                        this.buttons[i].set(peerColors.colors.get(i));
                    }
                    i++;
                } else {
                    invalidate();
                    return;
                }
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int size = View.MeasureSpec.getSize(i);
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            MessagesController.PeerColors peerColors = this.type == 0 ? messagesController.peerColors : messagesController.profilePeerColors;
            int size2 = peerColors == null ? 0 : peerColors.colors.size();
            int i4 = this.type == 0 ? 7 : 8;
            float f = size;
            float f2 = i4;
            float f3 = i4 + 1;
            float min = Math.min(AndroidUtilities.m107dp(54), f / ((f3 * 0.28947f) + f2));
            float min2 = Math.min(0.28947f * min, AndroidUtilities.m107dp(8));
            float min3 = Math.min(0.31578946f * min, AndroidUtilities.m108dp(11.33f));
            setMeasuredDimension(size, (int) (((size2 / i4) * min) + ((i3 + 1) * min3)));
            ColorButton[] colorButtonArr = this.buttons;
            if (colorButtonArr == null || colorButtonArr.length != size2) {
                this.buttons = new ColorButton[size2];
                for (int i5 = 0; i5 < size2; i5++) {
                    this.buttons[i5] = new ColorButton();
                    if (peerColors != null && i5 >= 0 && i5 < peerColors.colors.size()) {
                        this.buttons[i5].f1993id = peerColors.colors.get(i5).f1540id;
                        this.buttons[i5].set(peerColors.colors.get(i5));
                    }
                }
            }
            float f4 = ((f - ((f2 * min) + (f3 * min2))) / 2.0f) + min2;
            if (this.buttons != null) {
                float f5 = f4;
                float f6 = min3;
                for (int i6 = 0; i6 < this.buttons.length; i6++) {
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(f5, f6, f5 + min, f6 + min);
                    this.buttons[i6].layout(rectF);
                    rectF.inset((-min2) / 2.0f, (-min3) / 2.0f);
                    this.buttons[i6].layoutClickBounds(rectF);
                    ColorButton[] colorButtonArr2 = this.buttons;
                    colorButtonArr2[i6].setSelected(colorButtonArr2[i6].f1993id == this.selectedColorId, false);
                    if (i6 % i4 == i4 - 1) {
                        f6 += min + min3;
                        f5 = f4;
                    } else {
                        f5 += min + min2;
                    }
                }
            }
        }

        public void setDivider(boolean z) {
            this.needDivider = z;
            invalidate();
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (this.buttons != null) {
                int i = 0;
                while (true) {
                    ColorButton[] colorButtonArr = this.buttons;
                    if (i >= colorButtonArr.length) {
                        break;
                    }
                    colorButtonArr[i].draw(canvas);
                    i++;
                }
            }
            if (this.needDivider) {
                this.dividerPaint.setColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
                canvas.drawRect(AndroidUtilities.m107dp(21), getMeasuredHeight() - 1, getMeasuredWidth() - AndroidUtilities.m107dp(21), getMeasuredHeight(), this.dividerPaint);
            }
        }

        public void setSelected(int i, boolean z) {
            this.selectedColorId = i;
            if (this.buttons == null) {
                return;
            }
            int i2 = 0;
            while (true) {
                ColorButton[] colorButtonArr = this.buttons;
                if (i2 >= colorButtonArr.length) {
                    return;
                }
                colorButtonArr[i2].setSelected(colorButtonArr[i2].f1993id == i, z);
                i2++;
            }
        }

        public int getColorId() {
            return this.selectedColorId;
        }

        public void setOnColorClick(Utilities.Callback<Integer> callback) {
            this.onColorClick = callback;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatchTouchEvent(android.view.MotionEvent r7) {
            /*
                r6 = this;
                org.telegram.ui.PeerColorActivity$PeerColorGrid$ColorButton[] r0 = r6.buttons
                r1 = 0
                r2 = 0
                if (r0 == 0) goto L26
                r0 = r2
            L7:
                org.telegram.ui.PeerColorActivity$PeerColorGrid$ColorButton[] r3 = r6.buttons
                int r4 = r3.length
                if (r0 >= r4) goto L26
                r3 = r3[r0]
                android.graphics.RectF r3 = r3.clickBounds
                float r4 = r7.getX()
                float r5 = r7.getY()
                boolean r3 = r3.contains(r4, r5)
                if (r3 == 0) goto L23
                org.telegram.ui.PeerColorActivity$PeerColorGrid$ColorButton[] r3 = r6.buttons
                r0 = r3[r0]
                goto L27
            L23:
                int r0 = r0 + 1
                goto L7
            L26:
                r0 = r1
            L27:
                int r3 = r7.getAction()
                r4 = 1
                if (r3 != 0) goto L43
                r6.pressedButton = r0
                if (r0 == 0) goto L35
                r0.setPressed(r4)
            L35:
                android.view.ViewParent r7 = r6.getParent()
                if (r7 == 0) goto La6
                android.view.ViewParent r7 = r6.getParent()
                r7.requestDisallowInterceptTouchEvent(r4)
                goto La6
            L43:
                int r3 = r7.getAction()
                r5 = 2
                if (r3 != r5) goto L6e
                org.telegram.ui.PeerColorActivity$PeerColorGrid$ColorButton r7 = r6.pressedButton
                if (r7 == r0) goto La6
                if (r7 == 0) goto L53
                r7.setPressed(r2)
            L53:
                if (r0 == 0) goto L58
                r0.setPressed(r4)
            L58:
                org.telegram.ui.PeerColorActivity$PeerColorGrid$ColorButton r7 = r6.pressedButton
                if (r7 == 0) goto L6b
                if (r0 == 0) goto L6b
                org.telegram.messenger.Utilities$Callback<java.lang.Integer> r7 = r6.onColorClick
                if (r7 == 0) goto L6b
                int r1 = r0.f1993id
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                r7.run(r1)
            L6b:
                r6.pressedButton = r0
                goto La6
            L6e:
                int r0 = r7.getAction()
                if (r0 == r4) goto L7b
                int r0 = r7.getAction()
                r3 = 3
                if (r0 != r3) goto La6
            L7b:
                int r7 = r7.getAction()
                if (r7 != r4) goto L92
                org.telegram.ui.PeerColorActivity$PeerColorGrid$ColorButton r7 = r6.pressedButton
                if (r7 == 0) goto L92
                org.telegram.messenger.Utilities$Callback<java.lang.Integer> r0 = r6.onColorClick
                if (r0 == 0) goto L92
                int r7 = r7.f1993id
                java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
                r0.run(r7)
            L92:
                org.telegram.ui.PeerColorActivity$PeerColorGrid$ColorButton[] r7 = r6.buttons
                if (r7 == 0) goto La4
                r7 = r2
            L97:
                org.telegram.ui.PeerColorActivity$PeerColorGrid$ColorButton[] r0 = r6.buttons
                int r3 = r0.length
                if (r7 >= r3) goto La4
                r0 = r0[r7]
                r0.setPressed(r2)
                int r7 = r7 + 1
                goto L97
            La4:
                r6.pressedButton = r1
            La6:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PeerColorActivity.PeerColorGrid.dispatchTouchEvent(android.view.MotionEvent):boolean");
        }
    }

    /* renamed from: org.telegram.ui.PeerColorActivity$PeerColorSpan */
    /* loaded from: classes5.dex */
    public static class PeerColorSpan extends ReplacementSpan {
        public PeerColorDrawable drawable;
        private int size = AndroidUtilities.m107dp(21);

        public PeerColorSpan(boolean z, int i, int i2) {
            this.drawable = z ? PeerColorDrawable.fromProfile(i, i2) : PeerColorDrawable.from(i, i2);
        }

        public PeerColorSpan setSize(int i) {
            PeerColorDrawable peerColorDrawable = this.drawable;
            if (peerColorDrawable != null) {
                peerColorDrawable.setRadius(i / 2.0f);
                this.size = i;
            }
            return this;
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            return AndroidUtilities.m107dp(3) + this.size + AndroidUtilities.m107dp(3);
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            PeerColorDrawable peerColorDrawable = this.drawable;
            if (peerColorDrawable != null) {
                int i6 = (i3 + i5) / 2;
                float m107dp = f + AndroidUtilities.m107dp(5);
                int i7 = this.size;
                peerColorDrawable.setBounds((int) (AndroidUtilities.m107dp(3) + f), i6 - this.size, (int) (m107dp + i7), i6 + i7);
                this.drawable.draw(canvas);
            }
        }
    }

    /* renamed from: org.telegram.ui.PeerColorActivity$PeerColorDrawable */
    /* loaded from: classes5.dex */
    public static class PeerColorDrawable extends Drawable {
        private final Path clipCirclePath;
        private final Paint color1Paint;
        private final Paint color2Paint;
        private final Path color2Path;
        private final Paint color3Paint;
        private final boolean hasColor3;
        private float radius = AndroidUtilities.dpf2(10.6665f);
        private Paint strokePaint;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public static PeerColorDrawable from(int i, int i2) {
            if (i2 < 7) {
                return new PeerColorDrawable(Theme.getColor(Theme.keys_avatar_nameInMessage[i2]), Theme.getColor(Theme.keys_avatar_nameInMessage[i2]), Theme.getColor(Theme.keys_avatar_nameInMessage[i2]));
            }
            MessagesController.PeerColors peerColors = MessagesController.getInstance(i).peerColors;
            return from(peerColors == null ? null : peerColors.getColor(i2), false);
        }

        public static PeerColorDrawable fromProfile(int i, int i2) {
            MessagesController.PeerColors peerColors = MessagesController.getInstance(i).profilePeerColors;
            return from(peerColors == null ? null : peerColors.getColor(i2), true);
        }

        public static PeerColorDrawable from(MessagesController.PeerColor peerColor, boolean z) {
            if (peerColor == null) {
                return new PeerColorDrawable(0, 0, 0);
            }
            return new PeerColorDrawable(peerColor.getColor1(), (!z || peerColor.hasColor6(Theme.isCurrentThemeDark())) ? peerColor.getColor2() : peerColor.getColor1(), z ? peerColor.getColor1() : peerColor.getColor3());
        }

        public PeerColorDrawable setRadius(float f) {
            this.radius = f;
            initPath();
            return this;
        }

        public PeerColorDrawable stroke(float f, int i) {
            if (this.strokePaint == null) {
                Paint paint = new Paint(1);
                this.strokePaint = paint;
                paint.setStyle(Paint.Style.STROKE);
            }
            this.strokePaint.setStrokeWidth(f);
            this.strokePaint.setColor(i);
            return this;
        }

        public PeerColorDrawable(int i, int i2, int i3) {
            Paint paint = new Paint(1);
            this.color1Paint = paint;
            Paint paint2 = new Paint(1);
            this.color2Paint = paint2;
            Paint paint3 = new Paint(1);
            this.color3Paint = paint3;
            this.color2Path = new Path();
            this.clipCirclePath = new Path();
            this.hasColor3 = i3 != i;
            paint.setColor(i);
            paint2.setColor(i2);
            paint3.setColor(i3);
            initPath();
        }

        private void initPath() {
            this.clipCirclePath.rewind();
            Path path = this.clipCirclePath;
            float f = this.radius;
            path.addCircle(f, f, f, Path.Direction.CW);
            this.color2Path.rewind();
            this.color2Path.moveTo(this.radius * 2.0f, BitmapDescriptorFactory.HUE_RED);
            Path path2 = this.color2Path;
            float f2 = this.radius;
            path2.lineTo(f2 * 2.0f, f2 * 2.0f);
            this.color2Path.lineTo(BitmapDescriptorFactory.HUE_RED, this.radius * 2.0f);
            this.color2Path.close();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().centerX() - this.radius, getBounds().centerY() - this.radius);
            Paint paint = this.strokePaint;
            if (paint != null) {
                float f = this.radius;
                canvas.drawCircle(f, f, f, paint);
            }
            canvas.clipPath(this.clipCirclePath);
            canvas.drawPaint(this.color1Paint);
            canvas.drawPath(this.color2Path, this.color2Paint);
            if (this.hasColor3) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.radius - AndroidUtilities.m108dp(3.66f), this.radius - AndroidUtilities.m108dp(3.66f), this.radius + AndroidUtilities.m108dp(3.66f), this.radius + AndroidUtilities.m108dp(3.66f));
                float f2 = this.radius;
                canvas.rotate(45.0f, f2, f2);
                canvas.drawRoundRect(rectF, AndroidUtilities.m108dp(2.33f), AndroidUtilities.m108dp(2.33f), this.color3Paint);
            }
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return (int) (this.radius * 2.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return (int) (this.radius * 2.0f);
        }
    }

    /* renamed from: org.telegram.ui.PeerColorActivity$ColoredActionBar */
    /* loaded from: classes5.dex */
    public static class ColoredActionBar extends View {
        private LinearGradient backgroundGradient;
        private int backgroundGradientColor1;
        private int backgroundGradientColor2;
        private int backgroundGradientHeight;
        private final Paint backgroundPaint;
        public int color1;
        private final AnimatedColor color1Animated;
        public int color2;
        private final AnimatedColor color2Animated;
        private int defaultColor;
        protected boolean ignoreMeasure;
        public boolean isDefault;
        private float progressToGradient;
        private final Theme.ResourcesProvider resourcesProvider;

        protected void onUpdateColor() {
        }

        public ColoredActionBar(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.progressToGradient = BitmapDescriptorFactory.HUE_RED;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.color1Animated = new AnimatedColor(this, 350L, cubicBezierInterpolator);
            this.color2Animated = new AnimatedColor(this, 350L, cubicBezierInterpolator);
            this.backgroundPaint = new Paint(1);
            this.resourcesProvider = resourcesProvider;
            this.defaultColor = Theme.getColor(Theme.key_actionBarDefault, resourcesProvider);
            setColor(-1, -1, false);
        }

        public void setColor(int i, int i2, boolean z) {
            this.isDefault = false;
            if (i2 < 0 || i < 0) {
                this.isDefault = true;
                int color = Theme.getColor(Theme.key_actionBarDefault, this.resourcesProvider);
                this.color2 = color;
                this.color1 = color;
            } else {
                MessagesController.PeerColors peerColors = MessagesController.getInstance(i).profilePeerColors;
                MessagesController.PeerColor color2 = peerColors == null ? null : peerColors.getColor(i2);
                if (color2 != null) {
                    Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
                    boolean isDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
                    this.color1 = color2.getBgColor1(isDark);
                    this.color2 = color2.getBgColor2(isDark);
                } else {
                    this.isDefault = true;
                    int color3 = Theme.getColor(Theme.key_actionBarDefault, this.resourcesProvider);
                    this.color2 = color3;
                    this.color1 = color3;
                }
            }
            if (!z) {
                this.color1Animated.set(this.color1, true);
                this.color2Animated.set(this.color2, true);
            }
            invalidate();
        }

        public void setProgressToGradient(float f) {
            if (Math.abs(this.progressToGradient - f) > 0.001f) {
                this.progressToGradient = f;
                onUpdateColor();
                invalidate();
            }
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int i = this.color1Animated.set(this.color1);
            int i2 = this.color2Animated.set(this.color2);
            if (this.backgroundGradient == null || this.backgroundGradientColor1 != i || this.backgroundGradientColor2 != i2 || this.backgroundGradientHeight != getHeight()) {
                int height = getHeight();
                this.backgroundGradientHeight = height;
                this.backgroundGradientColor2 = i2;
                this.backgroundGradientColor1 = i;
                LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, height, new int[]{i2, i}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                this.backgroundGradient = linearGradient;
                this.backgroundPaint.setShader(linearGradient);
                onUpdateColor();
            }
            if (this.progressToGradient < 1.0f) {
                canvas.drawColor(this.defaultColor);
            }
            float f = this.progressToGradient;
            if (f > BitmapDescriptorFactory.HUE_RED) {
                this.backgroundPaint.setAlpha((int) (f * 255.0f));
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.backgroundPaint);
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            if (!this.ignoreMeasure) {
                i2 = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.statusBarHeight + AndroidUtilities.m107dp(144), 1073741824);
            }
            super.onMeasure(i, i2);
        }

        public void updateColors() {
            this.defaultColor = Theme.getColor(Theme.key_actionBarDefault, this.resourcesProvider);
            onUpdateColor();
            invalidate();
        }

        public int getColor() {
            return ColorUtils.blendARGB(Theme.getColor(Theme.key_actionBarDefault, this.resourcesProvider), ColorUtils.blendARGB(this.color1Animated.get(), this.color2Animated.get(), 0.75f), this.progressToGradient);
        }

        public int getActionBarButtonColor() {
            int i = Theme.key_actionBarDefaultIcon;
            return ColorUtils.blendARGB(Theme.getColor(i, this.resourcesProvider), this.isDefault ? Theme.getColor(i, this.resourcesProvider) : -1, this.progressToGradient);
        }

        public int getTabsViewBackgroundColor() {
            int adaptHSV;
            int adaptHSV2;
            int i = Theme.key_actionBarDefault;
            if (AndroidUtilities.computePerceivedBrightness(Theme.getColor(i, this.resourcesProvider)) > 0.721f) {
                adaptHSV = Theme.getColor(Theme.key_actionBarDefaultIcon, this.resourcesProvider);
            } else {
                adaptHSV = Theme.adaptHSV(Theme.getColor(i, this.resourcesProvider), 0.08f, -0.08f);
            }
            if (AndroidUtilities.computePerceivedBrightness(ColorUtils.blendARGB(this.color1Animated.get(), this.color2Animated.get(), 0.75f)) > 0.721f) {
                adaptHSV2 = Theme.getColor(Theme.key_windowBackgroundWhiteBlueIcon, this.resourcesProvider);
            } else {
                adaptHSV2 = Theme.adaptHSV(ColorUtils.blendARGB(this.color1Animated.get(), this.color2Animated.get(), 0.75f), 0.08f, -0.08f);
            }
            return ColorUtils.blendARGB(adaptHSV, adaptHSV2, this.progressToGradient);
        }
    }

    /* renamed from: org.telegram.ui.PeerColorActivity$ProfilePreview */
    /* loaded from: classes5.dex */
    public static class ProfilePreview extends FrameLayout {
        private final AvatarDrawable avatarDrawable;
        private final int currentAccount;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emoji;
        private final ImageReceiver imageReceiver;
        private final boolean isChannel;
        private int lastColorId;
        private final RectF rectF;
        private final Theme.ResourcesProvider resourcesProvider;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable statusEmoji;
        private final StoriesUtilities.StoryGradientTools storyGradient;
        private final SimpleTextView subtitleView;
        private final SimpleTextView titleView;

        public ProfilePreview(Context context, int i, long j, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            String userName;
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.imageReceiver = imageReceiver;
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            this.avatarDrawable = avatarDrawable;
            this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, false, AndroidUtilities.m107dp(20), 13);
            this.storyGradient = new StoriesUtilities.StoryGradientTools((View) this, false);
            this.lastColorId = -1;
            this.rectF = new RectF();
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            boolean z = j < 0;
            this.isChannel = z;
            SimpleTextView simpleTextView = new SimpleTextView(context) { // from class: org.telegram.ui.PeerColorActivity.ProfilePreview.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.ActionBar.SimpleTextView, android.view.View
                public void onAttachedToWindow() {
                    super.onAttachedToWindow();
                    ProfilePreview.this.statusEmoji.attach();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.ActionBar.SimpleTextView, android.view.View
                public void onDetachedFromWindow() {
                    super.onDetachedFromWindow();
                    ProfilePreview.this.statusEmoji.detach();
                }
            };
            this.titleView = simpleTextView;
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable((View) simpleTextView, true, AndroidUtilities.m107dp(24));
            this.statusEmoji = swapAnimatedEmojiDrawable;
            simpleTextView.setDrawablePadding(AndroidUtilities.m107dp(8));
            simpleTextView.setRightDrawable(swapAnimatedEmojiDrawable);
            simpleTextView.setTextColor(-1);
            simpleTextView.setTextSize(20);
            simpleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            simpleTextView.setScrollNonFitText(true);
            addView(simpleTextView, LayoutHelper.createFrame(-1, -2.0f, 83, 97.0f, (float) BitmapDescriptorFactory.HUE_RED, 16.0f, 50.33f));
            SimpleTextView simpleTextView2 = new SimpleTextView(context);
            this.subtitleView = simpleTextView2;
            simpleTextView2.setTextSize(14);
            simpleTextView2.setTextColor(-2130706433);
            simpleTextView2.setScrollNonFitText(true);
            addView(simpleTextView2, LayoutHelper.createFrame(-1, -2.0f, 83, 97.0f, (float) BitmapDescriptorFactory.HUE_RED, 16.0f, 30.66f));
            imageReceiver.setRoundRadius(AndroidUtilities.m107dp(54));
            if (z) {
                TLRPC$Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
                userName = chat == null ? "" : chat.title;
                avatarDrawable.setInfo(i, chat);
                imageReceiver.setForUserOrChat(chat, avatarDrawable);
            } else {
                TLRPC$User currentUser = UserConfig.getInstance(i).getCurrentUser();
                userName = UserObject.getUserName(currentUser);
                avatarDrawable.setInfo(i, currentUser);
                imageReceiver.setForUserOrChat(currentUser, avatarDrawable);
            }
            try {
                userName = Emoji.replaceEmoji(userName, null, false);
            } catch (Exception unused) {
            }
            this.titleView.setText(userName);
            if (this.isChannel) {
                long j2 = -j;
                TLRPC$Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(j2));
                TLRPC$ChatFull chatFull = MessagesController.getInstance(i).getChatFull(j2);
                if (chatFull != null && chatFull.participants_count > 0) {
                    if (ChatObject.isChannelAndNotMegaGroup(chat2)) {
                        this.subtitleView.setText(LocaleController.formatPluralStringComma("Subscribers", chatFull.participants_count));
                    } else {
                        this.subtitleView.setText(LocaleController.formatPluralStringComma("Members", chatFull.participants_count));
                    }
                } else if (chat2 != null && chat2.participants_count > 0) {
                    if (ChatObject.isChannelAndNotMegaGroup(chat2)) {
                        this.subtitleView.setText(LocaleController.formatPluralStringComma("Subscribers", chat2.participants_count));
                    } else {
                        this.subtitleView.setText(LocaleController.formatPluralStringComma("Members", chat2.participants_count));
                    }
                } else {
                    boolean isPublic = ChatObject.isPublic(chat2);
                    if (ChatObject.isChannelAndNotMegaGroup(chat2)) {
                        this.subtitleView.setText(LocaleController.getString(isPublic ? C3632R.string.ChannelPublic : C3632R.string.ChannelPrivate).toLowerCase());
                    } else {
                        this.subtitleView.setText(LocaleController.getString(isPublic ? C3632R.string.MegaPublic : C3632R.string.MegaPrivate).toLowerCase());
                    }
                }
            } else {
                this.subtitleView.setText(LocaleController.getString(C3632R.string.Online));
            }
            setWillNotDraw(false);
        }

        public void overrideAvatarColor(int i) {
            int themedColor;
            int themedColor2;
            if (i >= 14) {
                MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
                MessagesController.PeerColors peerColors = messagesController != null ? messagesController.peerColors : null;
                MessagesController.PeerColor color = peerColors != null ? peerColors.getColor(i) : null;
                if (color != null) {
                    int color1 = color.getColor1();
                    themedColor = getThemedColor(Theme.keys_avatar_background[AvatarDrawable.getPeerColorIndex(color1)]);
                    themedColor2 = getThemedColor(Theme.keys_avatar_background2[AvatarDrawable.getPeerColorIndex(color1)]);
                } else {
                    long j = i;
                    themedColor = getThemedColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(j)]);
                    themedColor2 = getThemedColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(j)]);
                }
            } else {
                long j2 = i;
                themedColor = getThemedColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(j2)]);
                themedColor2 = getThemedColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(j2)]);
            }
            this.avatarDrawable.setColor(themedColor, themedColor2);
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.emoji.attach();
            this.imageReceiver.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.emoji.detach();
            this.imageReceiver.onDetachedFromWindow();
        }

        private int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }

        public void setColor(int i, boolean z) {
            MessagesController.PeerColor color;
            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).profilePeerColors;
            if (peerColors == null) {
                color = null;
            } else {
                this.lastColorId = i;
                color = peerColors.getColor(i);
            }
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            boolean isDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
            if (color != null) {
                this.emoji.setColor(Integer.valueOf(PeerColorActivity.adaptProfileEmojiColor(color.getBgColor1(isDark))));
                this.statusEmoji.setColor(Integer.valueOf(ColorUtils.blendARGB(color.getColor(1, this.resourcesProvider), color.getColor(color.hasColor6(isDark) ? 4 : 2, this.resourcesProvider), 0.5f)));
                int blendARGB = ColorUtils.blendARGB(color.getStoryColor1(isDark), color.getStoryColor2(isDark), 0.5f);
                int i2 = Theme.key_actionBarDefault;
                if (!Theme.hasHue(getThemedColor(i2))) {
                    this.subtitleView.setTextColor(blendARGB);
                } else {
                    this.subtitleView.setTextColor(Theme.changeColorAccent(getThemedColor(i2), blendARGB, getThemedColor(Theme.key_avatar_subtitleInProfileBlue), isDark, blendARGB));
                }
                this.titleView.setTextColor(-1);
            } else {
                int i3 = Theme.key_actionBarDefault;
                if (AndroidUtilities.computePerceivedBrightness(getThemedColor(i3)) > 0.8f) {
                    this.emoji.setColor(Integer.valueOf(getThemedColor(Theme.key_windowBackgroundWhiteBlueText)));
                } else if (AndroidUtilities.computePerceivedBrightness(getThemedColor(i3)) < 0.2f) {
                    this.emoji.setColor(Integer.valueOf(Theme.multAlpha(getThemedColor(Theme.key_actionBarDefaultTitle), 0.5f)));
                } else {
                    this.emoji.setColor(Integer.valueOf(PeerColorActivity.adaptProfileEmojiColor(getThemedColor(i3))));
                }
                this.statusEmoji.setColor(Integer.valueOf(Theme.getColor(Theme.key_profile_verifiedBackground, this.resourcesProvider)));
                this.subtitleView.setTextColor(getThemedColor(Theme.key_actionBarDefaultSubtitle));
                this.titleView.setTextColor(getThemedColor(Theme.key_actionBarDefaultTitle));
            }
            this.storyGradient.setColorId(i, z);
            invalidate();
        }

        public void setEmoji(long j, boolean z) {
            if (j == 0) {
                this.emoji.set((Drawable) null, z);
            } else {
                this.emoji.set(j, z);
            }
            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).profilePeerColors;
            MessagesController.PeerColor color = peerColors != null ? peerColors.getColor(this.lastColorId) : null;
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            boolean isDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
            if (color != null) {
                this.emoji.setColor(Integer.valueOf(PeerColorActivity.adaptProfileEmojiColor(color.getBgColor1(isDark))));
            } else {
                int i = Theme.key_actionBarDefault;
                if (AndroidUtilities.computePerceivedBrightness(getThemedColor(i)) > 0.8f) {
                    this.emoji.setColor(Integer.valueOf(getThemedColor(Theme.key_windowBackgroundWhiteBlueText)));
                } else if (AndroidUtilities.computePerceivedBrightness(getThemedColor(i)) < 0.2f) {
                    this.emoji.setColor(Integer.valueOf(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultTitle), 0.5f)));
                } else {
                    this.emoji.setColor(Integer.valueOf(PeerColorActivity.adaptProfileEmojiColor(Theme.getColor(i))));
                }
            }
            if (color != null) {
                this.statusEmoji.setColor(Integer.valueOf(ColorUtils.blendARGB(color.getColor(1, this.resourcesProvider), color.getColor(color.hasColor6(isDark) ? 4 : 2, this.resourcesProvider), 0.5f)));
            } else {
                this.statusEmoji.setColor(Integer.valueOf(Theme.getColor(Theme.key_profile_verifiedBackground, this.resourcesProvider)));
            }
        }

        public void setStatusEmoji(long j, boolean z) {
            this.statusEmoji.set(j, z);
            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).profilePeerColors;
            MessagesController.PeerColor color = peerColors == null ? null : peerColors.getColor(this.lastColorId);
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            boolean isDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
            if (color != null) {
                this.statusEmoji.setColor(Integer.valueOf(ColorUtils.blendARGB(color.getColor2(isDark), color.hasColor6(isDark) ? color.getColor5(isDark) : color.getColor3(isDark), 0.5f)));
            } else {
                this.statusEmoji.setColor(Integer.valueOf(Theme.getColor(Theme.key_profile_verifiedBackground, this.resourcesProvider)));
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(final Canvas canvas) {
            this.rectF.set(AndroidUtilities.m108dp(20.33f), getHeight() - AndroidUtilities.m108dp(78.66f), AndroidUtilities.m108dp(20.33f) + AndroidUtilities.m108dp(53.33f), getHeight() - AndroidUtilities.m108dp(25.33f));
            this.imageReceiver.setImageCoords(this.rectF);
            this.imageReceiver.draw(canvas);
            canvas.drawCircle(this.rectF.centerX(), this.rectF.centerY(), (this.rectF.width() / 2.0f) + AndroidUtilities.m107dp(4), this.storyGradient.getPaint(this.rectF));
            PeerColorActivity.drawProfileIconPattern(getWidth() - AndroidUtilities.m107dp(46), getHeight(), 1.0f, new Utilities.Callback4() { // from class: org.telegram.ui.PeerColorActivity$ProfilePreview$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback4
                public final void run(Object obj, Object obj2, Object obj3, Object obj4) {
                    PeerColorActivity.ProfilePreview.this.lambda$dispatchDraw$0(canvas, (Float) obj, (Float) obj2, (Float) obj3, (Float) obj4);
                }
            });
            super.dispatchDraw(canvas);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$0(Canvas canvas, Float f, Float f2, Float f3, Float f4) {
            this.emoji.setAlpha((int) (f4.floatValue() * 255.0f));
            this.emoji.setBounds((int) (f.floatValue() - (f3.floatValue() * 0.45f)), (int) (f2.floatValue() - (f3.floatValue() * 0.45f)), (int) (f.floatValue() + (f3.floatValue() * 0.45f)), (int) (f2.floatValue() + (f3.floatValue() * 0.45f)));
            this.emoji.draw(canvas);
        }
    }

    public static int adaptProfileEmojiColor(int i) {
        return Theme.adaptHSV(i, 0.5f, (AndroidUtilities.computePerceivedBrightness(i) > 0.2f ? 1 : (AndroidUtilities.computePerceivedBrightness(i) == 0.2f ? 0 : -1)) < 0 ? 0.28f : -0.28f);
    }

    public static void drawProfileIconPattern(float f, float f2, float f3, Utilities.Callback4<Float, Float, Float, Float> callback4) {
        int i = 0;
        while (true) {
            float[] fArr = particles;
            if (i >= fArr.length) {
                return;
            }
            callback4.run(Float.valueOf((AndroidUtilities.m108dp(fArr[i]) * f3) + f), Float.valueOf((AndroidUtilities.m108dp(fArr[i + 1]) * f3) + f2), Float.valueOf(AndroidUtilities.dpf2(fArr[i + 2])), Float.valueOf(fArr[i + 3]));
            i += 4;
        }
    }

    public void toggleTheme() {
        FrameLayout frameLayout = (FrameLayout) getParentActivity().getWindow().getDecorView();
        final Bitmap createBitmap = Bitmap.createBitmap(frameLayout.getWidth(), frameLayout.getHeight(), Bitmap.Config.ARGB_8888);
        final Canvas canvas = new Canvas(createBitmap);
        this.dayNightItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
        frameLayout.draw(canvas);
        this.dayNightItem.setAlpha(1.0f);
        final Paint paint = new Paint(1);
        paint.setColor(-16777216);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        final Paint paint2 = new Paint(1);
        paint2.setFilterBitmap(true);
        int[] iArr = new int[2];
        this.dayNightItem.getLocationInWindow(iArr);
        final float f = iArr[0];
        final float f2 = iArr[1];
        final float measuredWidth = f + (this.dayNightItem.getMeasuredWidth() / 2.0f);
        final float measuredHeight = f2 + (this.dayNightItem.getMeasuredHeight() / 2.0f);
        final float max = Math.max(createBitmap.getHeight(), createBitmap.getWidth()) + AndroidUtilities.navigationBarHeight;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint2.setShader(new BitmapShader(createBitmap, tileMode, tileMode));
        View view = new View(getContext()) { // from class: org.telegram.ui.PeerColorActivity.7
            @Override // android.view.View
            protected void onDraw(Canvas canvas2) {
                super.onDraw(canvas2);
                if (PeerColorActivity.this.isDark) {
                    if (PeerColorActivity.this.changeDayNightViewProgress > BitmapDescriptorFactory.HUE_RED) {
                        canvas.drawCircle(measuredWidth, measuredHeight, max * PeerColorActivity.this.changeDayNightViewProgress, paint);
                    }
                    canvas2.drawBitmap(createBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint2);
                } else {
                    canvas2.drawCircle(measuredWidth, measuredHeight, max * (1.0f - PeerColorActivity.this.changeDayNightViewProgress), paint2);
                }
                canvas2.save();
                canvas2.translate(f, f2);
                PeerColorActivity.this.dayNightItem.draw(canvas2);
                canvas2.restore();
            }
        };
        this.changeDayNightView = view;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean lambda$toggleTheme$5;
                lambda$toggleTheme$5 = PeerColorActivity.lambda$toggleTheme$5(view2, motionEvent);
                return lambda$toggleTheme$5;
            }
        });
        this.changeDayNightViewProgress = BitmapDescriptorFactory.HUE_RED;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.changeDayNightViewAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PeerColorActivity.8
            boolean changedNavigationBarColor = false;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PeerColorActivity.this.changeDayNightViewProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                PeerColorActivity.this.changeDayNightView.invalidate();
                if (this.changedNavigationBarColor || PeerColorActivity.this.changeDayNightViewProgress <= 0.5f) {
                    return;
                }
                this.changedNavigationBarColor = true;
            }
        });
        this.changeDayNightViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PeerColorActivity.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (PeerColorActivity.this.changeDayNightView != null) {
                    if (PeerColorActivity.this.changeDayNightView.getParent() != null) {
                        ((ViewGroup) PeerColorActivity.this.changeDayNightView.getParent()).removeView(PeerColorActivity.this.changeDayNightView);
                    }
                    PeerColorActivity.this.changeDayNightView = null;
                }
                PeerColorActivity.this.changeDayNightViewAnimator = null;
                super.onAnimationEnd(animator);
            }
        });
        this.changeDayNightViewAnimator.setDuration(400L);
        this.changeDayNightViewAnimator.setInterpolator(Easings.easeInOutQuad);
        this.changeDayNightViewAnimator.start();
        frameLayout.addView(this.changeDayNightView, new ViewGroup.LayoutParams(-1, -1));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                PeerColorActivity.this.lambda$toggleTheme$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleTheme$6() {
        this.isDark = !this.isDark;
        updateThemeColors();
        setForceDark(this.isDark, true);
        updateColors();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        ColoredActionBar coloredActionBar = this.colorBar;
        if (coloredActionBar == null) {
            return super.isLightStatusBar();
        }
        return ColorUtils.calculateLuminance(coloredActionBar.getColor()) > 0.699999988079071d;
    }

    public void updateLightStatusBar() {
        if (getParentActivity() == null) {
            return;
        }
        AndroidUtilities.setLightStatusBar(getParentActivity().getWindow(), isLightStatusBar());
    }

    public void setForceDark(boolean z, boolean z2) {
        if (this.forceDark == z) {
            return;
        }
        this.forceDark = z;
        if (z2) {
            RLottieDrawable rLottieDrawable = this.sunDrawable;
            rLottieDrawable.setCustomEndFrame(z ? rLottieDrawable.getFramesCount() : 0);
            RLottieDrawable rLottieDrawable2 = this.sunDrawable;
            if (rLottieDrawable2 != null) {
                rLottieDrawable2.start();
                return;
            }
            return;
        }
        int framesCount = z ? this.sunDrawable.getFramesCount() - 1 : 0;
        this.sunDrawable.setCurrentFrame(framesCount, false, true);
        this.sunDrawable.setCustomEndFrame(framesCount);
        ImageView imageView = this.dayNightItem;
        if (imageView != null) {
            imageView.invalidate();
        }
    }
}
