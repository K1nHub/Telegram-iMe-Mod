package org.telegram.p048ui;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p048ui.ActionBar.ActionBarMenu;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.PhotoPickerAlbumsCell;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.CombinedDrawable;
import org.telegram.p048ui.Components.EditTextCaption;
import org.telegram.p048ui.Components.EditTextEmoji;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RadialProgressView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.SizeNotifierFrameLayout;
import org.telegram.p048ui.PhotoAlbumPickerActivity;
import org.telegram.p048ui.PhotoPickerActivity;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.PhotoAlbumPickerActivity */
/* loaded from: classes5.dex */
public class PhotoAlbumPickerActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    public static int SELECT_TYPE_ALL = 0;
    public static int SELECT_TYPE_AVATAR = 1;
    public static int SELECT_TYPE_AVATAR_VIDEO = 3;
    public static int SELECT_TYPE_QR = 10;
    public static int SELECT_TYPE_WALLPAPER = 2;
    private boolean allowCaption;
    private boolean allowGifs;
    private CharSequence caption;
    private ChatActivity chatActivity;
    private EditTextEmoji commentTextView;
    private PhotoAlbumPickerActivityDelegate delegate;
    private TextView emptyView;
    private FrameLayout frameLayout2;
    private ActionBarMenuSubItem[] itemCells;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int maxSelectedPhotos;
    private FrameLayout progressView;
    private int selectPhotoType;
    private View selectedCountView;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout sendPopupLayout;
    private ActionBarPopupWindow sendPopupWindow;
    private boolean sendPressed;
    private View shadow;
    private SizeNotifierFrameLayout sizeNotifierFrameLayout;
    private ImageView writeButton;
    private FrameLayout writeButtonContainer;
    private Drawable writeButtonDrawable;
    private HashMap<Object, Object> selectedPhotos = new HashMap<>();
    private ArrayList<Object> selectedPhotosOrder = new ArrayList<>();
    private ArrayList<MediaController.AlbumEntry> albumsSorted = null;
    private boolean loading = false;
    private int columnsCount = 2;
    private boolean allowSearchImages = true;
    private boolean allowOrder = true;
    private TextPaint textPaint = new TextPaint(1);
    private RectF rect = new RectF();
    private Paint paint = new Paint(1);

    /* renamed from: org.telegram.ui.PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate */
    /* loaded from: classes5.dex */
    public interface PhotoAlbumPickerActivityDelegate {
        void didSelectPhotos(ArrayList<SendMessagesHelper.SendingMediaInfo> arrayList, boolean z, int i, String str);

        void startPhotoSelectActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createView$0(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createView$1(View view, MotionEvent motionEvent) {
        return true;
    }

    public PhotoAlbumPickerActivity(int i, boolean z, boolean z2, ChatActivity chatActivity) {
        this.chatActivity = chatActivity;
        this.selectPhotoType = i;
        this.allowGifs = z;
        this.allowCaption = z2;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        int i = this.selectPhotoType;
        if (i == SELECT_TYPE_AVATAR || i == SELECT_TYPE_WALLPAPER || i == SELECT_TYPE_QR || !this.allowSearchImages) {
            this.albumsSorted = MediaController.allPhotoAlbums;
        } else {
            this.albumsSorted = MediaController.allMediaAlbums;
        }
        this.loading = this.albumsSorted == null;
        MediaController.loadGalleryPhotosAlbums(this.classGuid);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.closeChats);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.closeChats);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(Context context) {
        ArrayList<MediaController.AlbumEntry> arrayList;
        this.actionBar.setBackgroundColor(Theme.getColor("dialogBackground"));
        this.actionBar.setTitleColor(Theme.getColor("dialogTextBlack"));
        this.actionBar.setItemsColor(Theme.getColor("dialogTextBlack"), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor("dialogButtonSelector"), false);
        this.actionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        this.actionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    PhotoAlbumPickerActivity.this.finishFragment();
                } else if (i != 1) {
                    if (i == 2) {
                        PhotoAlbumPickerActivity.this.openPhotoPicker(null, 0);
                    }
                } else if (PhotoAlbumPickerActivity.this.delegate != null) {
                    PhotoAlbumPickerActivity.this.finishFragment(false);
                    PhotoAlbumPickerActivity.this.delegate.startPhotoSelectActivity();
                }
            }
        });
        ActionBarMenu createMenu = this.actionBar.createMenu();
        if (this.allowSearchImages) {
            createMenu.addItem(2, C3286R.C3288drawable.ic_ab_search).setContentDescription(LocaleController.getString("Search", C3286R.string.Search));
        }
        ActionBarMenuItem addItem = createMenu.addItem(0, C3286R.C3288drawable.ic_ab_other);
        addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3286R.string.AccDescrMoreOptions));
        addItem.addSubItem(1, C3286R.C3288drawable.msg_openin, LocaleController.getString("OpenInExternalApp", C3286R.string.OpenInExternalApp));
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.PhotoAlbumPickerActivity.2
            private boolean ignoreLayout;
            private int lastNotifyWidth;

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                setMeasuredDimension(size, size2);
                if (AndroidUtilities.m50dp(20) >= 0) {
                    if (!AndroidUtilities.isInMultiwindow) {
                        size2 -= PhotoAlbumPickerActivity.this.commentTextView.getEmojiPadding();
                        i2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
                    }
                } else {
                    this.ignoreLayout = true;
                    PhotoAlbumPickerActivity.this.commentTextView.hideEmojiView();
                    this.ignoreLayout = false;
                }
                int childCount = getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (childAt != null && childAt.getVisibility() != 8) {
                        if (PhotoAlbumPickerActivity.this.commentTextView != null && PhotoAlbumPickerActivity.this.commentTextView.isPopupView(childAt)) {
                            if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                                if (AndroidUtilities.isTablet()) {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m50dp(AndroidUtilities.isTablet() ? 200 : 320), (size2 - AndroidUtilities.statusBarHeight) + getPaddingTop()), 1073741824));
                                } else {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - AndroidUtilities.statusBarHeight) + getPaddingTop(), 1073741824));
                                }
                            } else {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, 1073741824));
                            }
                        } else {
                            measureChildWithMargins(childAt, i, 0, i2, 0);
                        }
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
            /* JADX WARN: Removed duplicated region for block: B:42:0x00b6  */
            /* JADX WARN: Removed duplicated region for block: B:46:0x00cb  */
            /* JADX WARN: Removed duplicated region for block: B:50:0x00dd  */
            /* JADX WARN: Removed duplicated region for block: B:51:0x00e6  */
            @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onLayout(boolean r10, int r11, int r12, int r13, int r14) {
                /*
                    Method dump skipped, instructions count: 253
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.PhotoAlbumPickerActivity.C60902.onLayout(boolean, int, int, int, int):void");
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setBackgroundColor(Theme.getColor("dialogBackground"));
        this.fragmentView = this.sizeNotifierFrameLayout;
        this.actionBar.setTitle(LocaleController.getString("Gallery", C3286R.string.Gallery));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setPadding(AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(54));
        this.listView.setClipToPadding(false);
        this.listView.setHorizontalScrollBarEnabled(false);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setDrawingCacheEnabled(false);
        this.sizeNotifierFrameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listAdapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        this.listView.setGlowColor(Theme.getColor("dialogBackground"));
        TextView textView = new TextView(context);
        this.emptyView = textView;
        textView.setTextColor(-8355712);
        this.emptyView.setTextSize(1, 20.0f);
        this.emptyView.setGravity(17);
        this.emptyView.setVisibility(8);
        this.emptyView.setText(LocaleController.getString("NoPhotos", C3286R.string.NoPhotos));
        this.sizeNotifierFrameLayout.addView(this.emptyView, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 0, 48));
        this.emptyView.setOnTouchListener(PhotoAlbumPickerActivity$$ExternalSyntheticLambda3.INSTANCE);
        FrameLayout frameLayout = new FrameLayout(context);
        this.progressView = frameLayout;
        frameLayout.setVisibility(8);
        this.sizeNotifierFrameLayout.addView(this.progressView, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 0, 48));
        RadialProgressView radialProgressView = new RadialProgressView(context);
        radialProgressView.setProgressColor(-11371101);
        this.progressView.addView(radialProgressView, LayoutHelper.createFrame(-2, -2, 17));
        View view = new View(context);
        this.shadow = view;
        view.setBackgroundResource(C3286R.C3288drawable.header_shadow_reverse);
        this.shadow.setTranslationY(AndroidUtilities.m50dp(48));
        this.sizeNotifierFrameLayout.addView(this.shadow, LayoutHelper.createFrame(-1, 3, 83, 0, 0, 0, 48));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.frameLayout2 = frameLayout2;
        frameLayout2.setBackgroundColor(Theme.getColor("dialogBackground"));
        this.frameLayout2.setVisibility(4);
        this.frameLayout2.setTranslationY(AndroidUtilities.m50dp(48));
        this.sizeNotifierFrameLayout.addView(this.frameLayout2, LayoutHelper.createFrame(-1, 48, 83));
        this.frameLayout2.setOnTouchListener(PhotoAlbumPickerActivity$$ExternalSyntheticLambda4.INSTANCE);
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
        this.commentTextView = new EditTextEmoji(context, this.sizeNotifierFrameLayout, null, 1, false);
        this.commentTextView.setFilters(new InputFilter[]{new InputFilter.LengthFilter(MessagesController.getInstance(UserConfig.selectedAccount).maxCaptionLength)});
        this.commentTextView.setHint(LocaleController.getString("AddCaption", C3286R.string.AddCaption));
        EditTextCaption editText = this.commentTextView.getEditText();
        editText.setMaxLines(1);
        editText.setSingleLine(true);
        this.frameLayout2.addView(this.commentTextView, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 84, 0));
        CharSequence charSequence = this.caption;
        if (charSequence != null) {
            this.commentTextView.setText(charSequence);
        }
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.PhotoAlbumPickerActivity.3
            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setText(LocaleController.formatPluralString("AccDescrSendPhotos", PhotoAlbumPickerActivity.this.selectedPhotos.size(), new Object[0]));
                accessibilityNodeInfo.setClassName(Button.class.getName());
                accessibilityNodeInfo.setLongClickable(true);
                accessibilityNodeInfo.setClickable(true);
            }
        };
        this.writeButtonContainer = frameLayout3;
        frameLayout3.setFocusable(true);
        this.writeButtonContainer.setFocusableInTouchMode(true);
        this.writeButtonContainer.setVisibility(4);
        this.writeButtonContainer.setScaleX(0.2f);
        this.writeButtonContainer.setScaleY(0.2f);
        this.writeButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.sizeNotifierFrameLayout.addView(this.writeButtonContainer, LayoutHelper.createFrame(60, 60, 85, 0, 0, 12, 10));
        this.writeButton = new ImageView(context);
        int m50dp = AndroidUtilities.m50dp(56);
        int color = Theme.getColor("dialogFloatingButton");
        int i = Build.VERSION.SDK_INT;
        this.writeButtonDrawable = Theme.createSimpleSelectorCircleDrawable(m50dp, color, Theme.getColor(i >= 21 ? "dialogFloatingButtonPressed" : "dialogFloatingButton"));
        if (i < 21) {
            Drawable mutate = context.getResources().getDrawable(C3286R.C3288drawable.floating_shadow_profile).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, this.writeButtonDrawable, 0, 0);
            combinedDrawable.setIconSize(AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
            this.writeButtonDrawable = combinedDrawable;
        }
        this.writeButton.setBackgroundDrawable(this.writeButtonDrawable);
        this.writeButton.setImageResource(C3286R.C3288drawable.attach_send);
        this.writeButton.setImportantForAccessibility(2);
        this.writeButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogFloatingIcon"), PorterDuff.Mode.MULTIPLY));
        this.writeButton.setScaleType(ImageView.ScaleType.CENTER);
        if (i >= 21) {
            this.writeButton.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.PhotoAlbumPickerActivity.4
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    outline.setOval(0, 0, AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
                }
            });
        }
        this.writeButtonContainer.addView(this.writeButton, LayoutHelper.createFrame(i >= 21 ? 56 : 60, i >= 21 ? 56 : 60, 51, i >= 21 ? 2 : 0, 0, 0, 0));
        this.writeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoAlbumPickerActivity.this.lambda$createView$3(view2);
            }
        });
        this.writeButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean lambda$createView$7;
                lambda$createView$7 = PhotoAlbumPickerActivity.this.lambda$createView$7(view2);
                return lambda$createView$7;
            }
        });
        this.textPaint.setTextSize(AndroidUtilities.m50dp(12));
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        View view2 = new View(context) { // from class: org.telegram.ui.PhotoAlbumPickerActivity.6
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                String format = String.format("%d", Integer.valueOf(Math.max(1, PhotoAlbumPickerActivity.this.selectedPhotosOrder.size())));
                int ceil = (int) Math.ceil(PhotoAlbumPickerActivity.this.textPaint.measureText(format));
                int max = Math.max(AndroidUtilities.m50dp(16) + ceil, AndroidUtilities.m50dp(24));
                int measuredWidth = getMeasuredWidth() / 2;
                int measuredHeight = getMeasuredHeight() / 2;
                PhotoAlbumPickerActivity.this.textPaint.setColor(Theme.getColor("dialogRoundCheckBoxCheck"));
                PhotoAlbumPickerActivity.this.paint.setColor(Theme.getColor("dialogBackground"));
                int i2 = max / 2;
                int i3 = measuredWidth - i2;
                int i4 = i2 + measuredWidth;
                PhotoAlbumPickerActivity.this.rect.set(i3, BitmapDescriptorFactory.HUE_RED, i4, getMeasuredHeight());
                canvas.drawRoundRect(PhotoAlbumPickerActivity.this.rect, AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(12), PhotoAlbumPickerActivity.this.paint);
                PhotoAlbumPickerActivity.this.paint.setColor(Theme.getColor("dialogRoundCheckBox"));
                PhotoAlbumPickerActivity.this.rect.set(i3 + AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), i4 - AndroidUtilities.m50dp(2), getMeasuredHeight() - AndroidUtilities.m50dp(2));
                canvas.drawRoundRect(PhotoAlbumPickerActivity.this.rect, AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), PhotoAlbumPickerActivity.this.paint);
                canvas.drawText(format, measuredWidth - (ceil / 2), AndroidUtilities.m51dp(16.2f), PhotoAlbumPickerActivity.this.textPaint);
            }
        };
        this.selectedCountView = view2;
        view2.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.selectedCountView.setScaleX(0.2f);
        this.selectedCountView.setScaleY(0.2f);
        this.sizeNotifierFrameLayout.addView(this.selectedCountView, LayoutHelper.createFrame(42, 24, 85, 0, 0, -2, 9));
        if (this.selectPhotoType != SELECT_TYPE_ALL) {
            this.commentTextView.setVisibility(8);
        }
        if (this.loading && ((arrayList = this.albumsSorted) == null || arrayList.isEmpty())) {
            this.progressView.setVisibility(0);
            this.listView.setEmptyView(null);
        } else {
            this.progressView.setVisibility(8);
            this.listView.setEmptyView(this.emptyView);
        }
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        ChatActivity chatActivity;
        ChatActivity chatActivity2 = this.chatActivity;
        if ((chatActivity2 != null && chatActivity2.isInScheduleMode()) || ((chatActivity = this.chatActivity) != null && chatActivity.isTemplatesChannel(true, true))) {
            AlertsCreator.createScheduleDatePickerDialog(getParentActivity(), this.chatActivity.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda6
                @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z, int i, String str) {
                    PhotoAlbumPickerActivity.this.lambda$createView$2(z, i, str);
                }

                @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public /* synthetic */ ArrayList getSelectedDialogs() {
                    return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                }
            }, this.chatActivity);
            return;
        }
        sendSelectedPhotos(this.selectedPhotos, this.selectedPhotosOrder, true, 0, null);
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(boolean z, int i, String str) {
        sendSelectedPhotos(this.selectedPhotos, this.selectedPhotosOrder, z, i, str);
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$7(View view) {
        ChatActivity chatActivity = this.chatActivity;
        if (chatActivity != null && this.maxSelectedPhotos != 1) {
            chatActivity.getCurrentChat();
            TLRPC$User currentUser = this.chatActivity.getCurrentUser();
            if (this.sendPopupLayout == null) {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity());
                this.sendPopupLayout = actionBarPopupWindowLayout;
                actionBarPopupWindowLayout.setAnimationEnabled(false);
                this.sendPopupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.5
                    private Rect popupRect = new Rect();

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, MotionEvent motionEvent) {
                        if (motionEvent.getActionMasked() == 0 && PhotoAlbumPickerActivity.this.sendPopupWindow != null && PhotoAlbumPickerActivity.this.sendPopupWindow.isShowing()) {
                            view2.getHitRect(this.popupRect);
                            if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                                return false;
                            }
                            PhotoAlbumPickerActivity.this.sendPopupWindow.dismiss();
                            return false;
                        }
                        return false;
                    }
                });
                this.sendPopupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda5
                    @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                    public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                        PhotoAlbumPickerActivity.this.lambda$createView$4(keyEvent);
                    }
                });
                this.sendPopupLayout.setShownFromBottom(false);
                this.itemCells = new ActionBarMenuSubItem[2];
                final int i = 0;
                while (i < 2) {
                    if ((i != 0 || this.chatActivity.canScheduleMessage()) && (i != 1 || !UserObject.isUserSelf(currentUser))) {
                        this.itemCells[i] = new ActionBarMenuSubItem(getParentActivity(), i == 0, i == 1);
                        if (i == 0) {
                            if (UserObject.isUserSelf(currentUser)) {
                                this.itemCells[i].setTextAndIcon(LocaleController.getString("SetReminder", C3286R.string.SetReminder), C3286R.C3288drawable.msg_calendar2);
                            } else {
                                this.itemCells[i].setTextAndIcon(LocaleController.getString("ScheduleMessage", C3286R.string.ScheduleMessage), C3286R.C3288drawable.msg_calendar2);
                            }
                        } else if (getToolsController().isSilentSendingEnabledForDialog(this.chatActivity.getDialogId())) {
                            this.itemCells[i].setTextAndIcon(LocaleController.getInternalString(C3286R.string.send_with_sound), C3286R.C3288drawable.input_notify_on);
                        } else {
                            this.itemCells[i].setTextAndIcon(LocaleController.getString("SendWithoutSound", C3286R.string.SendWithoutSound), C3286R.C3288drawable.input_notify_off);
                        }
                        this.itemCells[i].setMinimumWidth(AndroidUtilities.m50dp(196));
                        this.sendPopupLayout.addView((View) this.itemCells[i], LayoutHelper.createLinear(-1, 48));
                        this.itemCells[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                PhotoAlbumPickerActivity.this.lambda$createView$6(i, view2);
                            }
                        });
                    }
                    i++;
                }
                this.sendPopupLayout.setupRadialSelectors(Theme.getColor("dialogButtonSelector"));
                ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(this.sendPopupLayout, -2, -2);
                this.sendPopupWindow = actionBarPopupWindow;
                actionBarPopupWindow.setAnimationEnabled(false);
                this.sendPopupWindow.setAnimationStyle(C3286R.style.PopupContextAnimation2);
                this.sendPopupWindow.setOutsideTouchable(true);
                this.sendPopupWindow.setClippingEnabled(true);
                this.sendPopupWindow.setInputMethodMode(2);
                this.sendPopupWindow.setSoftInputMode(0);
                this.sendPopupWindow.getContentView().setFocusableInTouchMode(true);
            }
            this.sendPopupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE));
            this.sendPopupWindow.setFocusable(true);
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            this.sendPopupWindow.showAtLocation(view, 51, ((iArr[0] + view.getMeasuredWidth()) - this.sendPopupLayout.getMeasuredWidth()) + AndroidUtilities.m50dp(8), (iArr[1] - this.sendPopupLayout.getMeasuredHeight()) - AndroidUtilities.m50dp(2));
            this.sendPopupWindow.dimBehind();
            view.performHapticFeedback(3, 2);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(int i, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        if (i == 0) {
            AlertsCreator.createScheduleDatePickerDialog(getParentActivity(), this.chatActivity.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$$ExternalSyntheticLambda7
                @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z, int i2, String str) {
                    PhotoAlbumPickerActivity.this.lambda$createView$5(z, i2, str);
                }

                @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public /* synthetic */ ArrayList getSelectedDialogs() {
                    return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                }
            }, null);
            return;
        }
        sendSelectedPhotos(this.selectedPhotos, this.selectedPhotosOrder, true, 0, null);
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(boolean z, int i, String str) {
        sendSelectedPhotos(this.selectedPhotos, this.selectedPhotosOrder, z, i, str);
        finishFragment();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onResume();
        }
        fixLayout();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        fixLayout();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.albumsDidLoad) {
            if (this.classGuid == ((Integer) objArr[0]).intValue()) {
                int i3 = this.selectPhotoType;
                if (i3 == SELECT_TYPE_AVATAR || i3 == SELECT_TYPE_WALLPAPER || i3 == SELECT_TYPE_QR || !this.allowSearchImages) {
                    this.albumsSorted = (ArrayList) objArr[2];
                } else {
                    this.albumsSorted = (ArrayList) objArr[1];
                }
                FrameLayout frameLayout = this.progressView;
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
                RecyclerListView recyclerListView = this.listView;
                if (recyclerListView != null && recyclerListView.getEmptyView() == null) {
                    this.listView.setEmptyView(this.emptyView);
                }
                ListAdapter listAdapter = this.listAdapter;
                if (listAdapter != null) {
                    listAdapter.notifyDataSetChanged();
                }
                this.loading = false;
            }
        } else if (i == NotificationCenter.closeChats) {
            removeSelfFromStack(true);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null && editTextEmoji.isPopupShowing()) {
            this.commentTextView.hidePopup(true);
            return false;
        }
        return super.onBackPressed();
    }

    public void setMaxSelectedPhotos(int i, boolean z) {
        this.maxSelectedPhotos = i;
        this.allowOrder = z;
    }

    public void setAllowSearchImages(boolean z) {
        this.allowSearchImages = z;
    }

    public void setDelegate(PhotoAlbumPickerActivityDelegate photoAlbumPickerActivityDelegate) {
        this.delegate = photoAlbumPickerActivityDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSelectedPhotos(HashMap<Object, Object> hashMap, ArrayList<Object> arrayList, boolean z, int i, String str) {
        if (hashMap.isEmpty() || this.delegate == null || this.sendPressed) {
            return;
        }
        this.sendPressed = true;
        ArrayList<SendMessagesHelper.SendingMediaInfo> arrayList2 = new ArrayList<>();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Object obj = hashMap.get(arrayList.get(i2));
            SendMessagesHelper.SendingMediaInfo sendingMediaInfo = new SendMessagesHelper.SendingMediaInfo();
            arrayList2.add(sendingMediaInfo);
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                String str2 = photoEntry.imagePath;
                if (str2 != null) {
                    sendingMediaInfo.path = str2;
                } else {
                    sendingMediaInfo.path = photoEntry.path;
                }
                sendingMediaInfo.thumbPath = photoEntry.thumbPath;
                sendingMediaInfo.videoEditedInfo = photoEntry.editedInfo;
                sendingMediaInfo.isVideo = photoEntry.isVideo;
                CharSequence charSequence = photoEntry.caption;
                sendingMediaInfo.caption = charSequence != null ? charSequence.toString() : null;
                sendingMediaInfo.entities = photoEntry.entities;
                sendingMediaInfo.masks = photoEntry.stickers;
                sendingMediaInfo.ttl = photoEntry.ttl;
            } else if (obj instanceof MediaController.SearchImage) {
                MediaController.SearchImage searchImage = (MediaController.SearchImage) obj;
                String str3 = searchImage.imagePath;
                if (str3 != null) {
                    sendingMediaInfo.path = str3;
                } else {
                    sendingMediaInfo.searchImage = searchImage;
                }
                sendingMediaInfo.thumbPath = searchImage.thumbPath;
                sendingMediaInfo.videoEditedInfo = searchImage.editedInfo;
                CharSequence charSequence2 = searchImage.caption;
                sendingMediaInfo.caption = charSequence2 != null ? charSequence2.toString() : null;
                sendingMediaInfo.entities = searchImage.entities;
                sendingMediaInfo.masks = searchImage.stickers;
                sendingMediaInfo.ttl = searchImage.ttl;
                TLRPC$BotInlineResult tLRPC$BotInlineResult = searchImage.inlineResult;
                if (tLRPC$BotInlineResult != null && searchImage.type == 1) {
                    sendingMediaInfo.inlineResult = tLRPC$BotInlineResult;
                    sendingMediaInfo.params = searchImage.params;
                }
                searchImage.date = (int) (System.currentTimeMillis() / 1000);
            }
        }
        this.delegate.didSelectPhotos(arrayList2, z, i, str);
    }

    private void fixLayout() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            recyclerListView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.7
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    PhotoAlbumPickerActivity.this.fixLayoutInternal();
                    if (PhotoAlbumPickerActivity.this.listView != null) {
                        PhotoAlbumPickerActivity.this.listView.getViewTreeObserver().removeOnPreDrawListener(this);
                        return true;
                    }
                    return true;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixLayoutInternal() {
        if (getParentActivity() == null) {
            return;
        }
        int rotation = ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
        this.columnsCount = 2;
        if (!AndroidUtilities.isTablet() && (rotation == 3 || rotation == 1)) {
            this.columnsCount = 4;
        }
        this.listAdapter.notifyDataSetChanged();
    }

    private boolean showCommentTextView(boolean z) {
        if (z == (this.frameLayout2.getTag() != null)) {
            return false;
        }
        this.frameLayout2.setTag(z ? 1 : null);
        if (this.commentTextView.getEditText().isFocused()) {
            AndroidUtilities.hideKeyboard(this.commentTextView.getEditText());
        }
        this.commentTextView.hidePopup(true);
        if (z) {
            this.frameLayout2.setVisibility(0);
            this.writeButtonContainer.setVisibility(0);
        } else {
            this.frameLayout2.setVisibility(4);
            this.writeButtonContainer.setVisibility(4);
        }
        this.writeButtonContainer.setScaleX(z ? 1.0f : 0.2f);
        this.writeButtonContainer.setScaleY(z ? 1.0f : 0.2f);
        FrameLayout frameLayout = this.writeButtonContainer;
        float f = BitmapDescriptorFactory.HUE_RED;
        frameLayout.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.selectedCountView.setScaleX(z ? 1.0f : 0.2f);
        this.selectedCountView.setScaleY(z ? 1.0f : 0.2f);
        this.selectedCountView.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.frameLayout2.setTranslationY(z ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(48));
        View view = this.shadow;
        if (!z) {
            f = AndroidUtilities.m50dp(48);
        }
        view.setTranslationY(f);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePhotosButton() {
        if (this.selectedPhotos.size() == 0) {
            this.selectedCountView.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.selectedCountView.setPivotY(BitmapDescriptorFactory.HUE_RED);
            showCommentTextView(false);
            return;
        }
        this.selectedCountView.invalidate();
        showCommentTextView(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openPhotoPicker(MediaController.AlbumEntry albumEntry, int i) {
        if (albumEntry != null) {
            PhotoPickerActivity photoPickerActivity = new PhotoPickerActivity(i, albumEntry, this.selectedPhotos, this.selectedPhotosOrder, this.selectPhotoType, this.allowCaption, this.chatActivity, false);
            Editable text = this.commentTextView.getText();
            this.caption = text;
            photoPickerActivity.setCaption(text);
            photoPickerActivity.setDelegate(new PhotoPickerActivity.PhotoPickerActivityDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.8
                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public /* synthetic */ boolean canFinishFragment() {
                    return PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$canFinishFragment(this);
                }

                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public /* synthetic */ void onOpenInPressed() {
                    PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$onOpenInPressed(this);
                }

                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void selectedPhotosChanged() {
                    PhotoAlbumPickerActivity.this.updatePhotosButton();
                }

                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void actionButtonPressed(boolean z, boolean z2, int i2, String str, boolean z3) {
                    PhotoAlbumPickerActivity.this.removeSelfFromStack();
                    if (z) {
                        return;
                    }
                    PhotoAlbumPickerActivity photoAlbumPickerActivity = PhotoAlbumPickerActivity.this;
                    photoAlbumPickerActivity.sendSelectedPhotos(photoAlbumPickerActivity.selectedPhotos, PhotoAlbumPickerActivity.this.selectedPhotosOrder, z2, i2, str);
                }

                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void onCaptionChanged(CharSequence charSequence) {
                    PhotoAlbumPickerActivity.this.commentTextView.setText(PhotoAlbumPickerActivity.this.caption = charSequence);
                }
            });
            photoPickerActivity.setMaxSelectedPhotos(this.maxSelectedPhotos, this.allowOrder);
            presentFragment(photoPickerActivity);
            return;
        }
        final HashMap hashMap = new HashMap();
        final ArrayList arrayList = new ArrayList();
        if (this.allowGifs) {
            PhotoPickerSearchActivity photoPickerSearchActivity = new PhotoPickerSearchActivity(hashMap, arrayList, this.selectPhotoType, this.allowCaption, this.chatActivity);
            Editable text2 = this.commentTextView.getText();
            this.caption = text2;
            photoPickerSearchActivity.setCaption(text2);
            photoPickerSearchActivity.setDelegate(new PhotoPickerActivity.PhotoPickerActivityDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.9
                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public /* synthetic */ boolean canFinishFragment() {
                    return PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$canFinishFragment(this);
                }

                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public /* synthetic */ void onOpenInPressed() {
                    PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$onOpenInPressed(this);
                }

                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void selectedPhotosChanged() {
                }

                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void actionButtonPressed(boolean z, boolean z2, int i2, String str, boolean z3) {
                    PhotoAlbumPickerActivity.this.removeSelfFromStack();
                    if (z) {
                        return;
                    }
                    PhotoAlbumPickerActivity.this.sendSelectedPhotos(hashMap, arrayList, z2, i2, str);
                }

                @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                public void onCaptionChanged(CharSequence charSequence) {
                    PhotoAlbumPickerActivity.this.commentTextView.setText(PhotoAlbumPickerActivity.this.caption = charSequence);
                }
            });
            photoPickerSearchActivity.setMaxSelectedPhotos(this.maxSelectedPhotos, this.allowOrder);
            presentFragment(photoPickerSearchActivity);
            return;
        }
        PhotoPickerActivity photoPickerActivity2 = new PhotoPickerActivity(0, albumEntry, hashMap, arrayList, this.selectPhotoType, this.allowCaption, this.chatActivity, false);
        Editable text3 = this.commentTextView.getText();
        this.caption = text3;
        photoPickerActivity2.setCaption(text3);
        photoPickerActivity2.setDelegate(new PhotoPickerActivity.PhotoPickerActivityDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity.10
            @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public /* synthetic */ boolean canFinishFragment() {
                return PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$canFinishFragment(this);
            }

            @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public /* synthetic */ void onOpenInPressed() {
                PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$onOpenInPressed(this);
            }

            @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public void selectedPhotosChanged() {
            }

            @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public void actionButtonPressed(boolean z, boolean z2, int i2, String str, boolean z3) {
                PhotoAlbumPickerActivity.this.removeSelfFromStack();
                if (z) {
                    return;
                }
                PhotoAlbumPickerActivity.this.sendSelectedPhotos(hashMap, arrayList, z2, i2, str);
            }

            @Override // org.telegram.p048ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public void onCaptionChanged(CharSequence charSequence) {
                PhotoAlbumPickerActivity.this.commentTextView.setText(PhotoAlbumPickerActivity.this.caption = charSequence);
            }
        });
        photoPickerActivity2.setMaxSelectedPhotos(this.maxSelectedPhotos, this.allowOrder);
        presentFragment(photoPickerActivity2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PhotoAlbumPickerActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (PhotoAlbumPickerActivity.this.albumsSorted != null) {
                return (int) Math.ceil(PhotoAlbumPickerActivity.this.albumsSorted.size() / PhotoAlbumPickerActivity.this.columnsCount);
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            PhotoPickerAlbumsCell photoPickerAlbumsCell = new PhotoPickerAlbumsCell(this.mContext);
            photoPickerAlbumsCell.setDelegate(new PhotoPickerAlbumsCell.PhotoPickerAlbumsCellDelegate() { // from class: org.telegram.ui.PhotoAlbumPickerActivity$ListAdapter$$ExternalSyntheticLambda0
                @Override // org.telegram.p048ui.Cells.PhotoPickerAlbumsCell.PhotoPickerAlbumsCellDelegate
                public final void didSelectAlbum(MediaController.AlbumEntry albumEntry) {
                    PhotoAlbumPickerActivity.ListAdapter.this.lambda$onCreateViewHolder$0(albumEntry);
                }
            });
            return new RecyclerListView.Holder(photoPickerAlbumsCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(MediaController.AlbumEntry albumEntry) {
            PhotoAlbumPickerActivity.this.openPhotoPicker(albumEntry, 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            PhotoPickerAlbumsCell photoPickerAlbumsCell = (PhotoPickerAlbumsCell) viewHolder.itemView;
            photoPickerAlbumsCell.setAlbumsCount(PhotoAlbumPickerActivity.this.columnsCount);
            for (int i2 = 0; i2 < PhotoAlbumPickerActivity.this.columnsCount; i2++) {
                int i3 = (PhotoAlbumPickerActivity.this.columnsCount * i) + i2;
                if (i3 < PhotoAlbumPickerActivity.this.albumsSorted.size()) {
                    photoPickerAlbumsCell.setAlbum(i2, (MediaController.AlbumEntry) PhotoAlbumPickerActivity.this.albumsSorted.get(i3));
                } else {
                    photoPickerAlbumsCell.setAlbum(i2, null);
                }
            }
            photoPickerAlbumsCell.requestLayout();
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "dialogBackground"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "dialogBackground"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "dialogTextBlack"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "dialogTextBlack"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "dialogButtonSelector"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "dialogBackground"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, null, new Drawable[]{Theme.chat_attachEmptyDrawable}, null, "chat_attachEmptyImage"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, null, null, null, "chat_attachPhotoBackground"));
        return arrayList;
    }
}
