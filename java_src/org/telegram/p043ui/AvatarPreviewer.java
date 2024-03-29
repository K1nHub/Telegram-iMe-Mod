package org.telegram.p043ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.AvatarPreviewer;
import org.telegram.p043ui.Components.RadialProgress2;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$TL_photoStrippedSize;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$VideoSize;
/* renamed from: org.telegram.ui.AvatarPreviewer */
/* loaded from: classes5.dex */
public class AvatarPreviewer {
    private static AvatarPreviewer INSTANCE;
    private Layout layout;
    private ViewGroup view;
    private boolean visible;
    private WindowManager windowManager;

    /* renamed from: org.telegram.ui.AvatarPreviewer$Callback */
    /* loaded from: classes5.dex */
    public interface Callback {
        void onMenuClick(MenuItem menuItem);
    }

    public static AvatarPreviewer getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new AvatarPreviewer();
        }
        return INSTANCE;
    }

    public static boolean hasVisibleInstance() {
        AvatarPreviewer avatarPreviewer = INSTANCE;
        return avatarPreviewer != null && avatarPreviewer.visible;
    }

    public static boolean canPreview(Data data) {
        return (data == null || (data.imageLocation == null && data.thumbImageLocation == null)) ? false : true;
    }

    public void show(ViewGroup viewGroup, Data data, Callback callback) {
        Preconditions.checkNotNull(viewGroup);
        Preconditions.checkNotNull(data);
        Preconditions.checkNotNull(callback);
        Context context = viewGroup.getContext();
        if (this.view != viewGroup) {
            close();
            this.view = viewGroup;
            this.windowManager = (WindowManager) ContextCompat.getSystemService(context, WindowManager.class);
            this.layout = new Layout(context, callback) { // from class: org.telegram.ui.AvatarPreviewer.1
                @Override // org.telegram.p043ui.AvatarPreviewer.Layout
                protected void onHide() {
                    AvatarPreviewer.this.close();
                }
            };
        }
        this.layout.setData(data);
        if (this.visible) {
            return;
        }
        if (this.layout.getParent() != null) {
            this.windowManager.removeView(this.layout);
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 99, 0, -3);
        if (Build.VERSION.SDK_INT >= 21) {
            layoutParams.flags = -2147286784;
        }
        this.windowManager.addView(this.layout, layoutParams);
        viewGroup.requestDisallowInterceptTouchEvent(true);
        this.visible = true;
    }

    public void close() {
        if (this.visible) {
            this.visible = false;
            if (this.layout.getParent() != null) {
                this.windowManager.removeView(this.layout);
            }
            this.layout.recycle();
            this.layout = null;
            this.view.requestDisallowInterceptTouchEvent(false);
            this.view = null;
            this.windowManager = null;
        }
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        Layout layout = this.layout;
        if (layout != null) {
            layout.onTouchEvent(motionEvent);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum OPEN_GROUP uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: org.telegram.ui.AvatarPreviewer$MenuItem */
    /* loaded from: classes5.dex */
    public static final class MenuItem {
        private static final /* synthetic */ MenuItem[] $VALUES;
        public static final MenuItem MENTION;
        public static final MenuItem OPEN_CHANNEL;
        public static final MenuItem OPEN_GROUP;
        public static final MenuItem OPEN_PROFILE;
        public static final MenuItem SEND_MESSAGE;
        private final int iconResId;
        private final String labelKey;
        private final int labelResId;

        public static MenuItem valueOf(String str) {
            return (MenuItem) Enum.valueOf(MenuItem.class, str);
        }

        public static MenuItem[] values() {
            return (MenuItem[]) $VALUES.clone();
        }

        static {
            MenuItem menuItem = new MenuItem("OPEN_PROFILE", 0, "OpenProfile", C3632R.string.OpenProfile, C3632R.C3634drawable.msg_openprofile);
            OPEN_PROFILE = menuItem;
            MenuItem menuItem2 = new MenuItem("OPEN_CHANNEL", 1, "OpenChannel2", C3632R.string.OpenChannel2, C3632R.C3634drawable.msg_channel);
            OPEN_CHANNEL = menuItem2;
            int i = C3632R.string.OpenGroup2;
            int i2 = C3632R.C3634drawable.msg_discussion;
            MenuItem menuItem3 = new MenuItem("OPEN_GROUP", 2, "OpenGroup2", i, i2);
            OPEN_GROUP = menuItem3;
            MenuItem menuItem4 = new MenuItem("SEND_MESSAGE", 3, "SendMessage", C3632R.string.SendMessage, i2);
            SEND_MESSAGE = menuItem4;
            MenuItem menuItem5 = new MenuItem("MENTION", 4, "Mention", C3632R.string.Mention, C3632R.C3634drawable.msg_mention);
            MENTION = menuItem5;
            $VALUES = new MenuItem[]{menuItem, menuItem2, menuItem3, menuItem4, menuItem5};
        }

        private MenuItem(String str, int i, String str2, int i2, int i3) {
            this.labelKey = str2;
            this.labelResId = i2;
            this.iconResId = i3;
        }
    }

    /* renamed from: org.telegram.ui.AvatarPreviewer$Data */
    /* loaded from: classes5.dex */
    public static class Data {
        private final String imageFilter;
        private final ImageLocation imageLocation;
        private final InfoLoadTask<?, ?> infoLoadTask;
        private final MenuItem[] menuItems;
        private final Object parentObject;
        private final String thumbImageFilter;
        private final ImageLocation thumbImageLocation;
        private final String videoFileName;
        private final String videoFilter;
        private final ImageLocation videoLocation;

        /* renamed from: of */
        public static Data m70of(TLRPC$User tLRPC$User, int i, MenuItem... menuItemArr) {
            ImageLocation forUserOrChat = ImageLocation.getForUserOrChat(tLRPC$User, 0);
            ImageLocation forUserOrChat2 = ImageLocation.getForUserOrChat(tLRPC$User, 1);
            return new Data(forUserOrChat, forUserOrChat2, null, null, (forUserOrChat2 == null || !(forUserOrChat2.photoSize instanceof TLRPC$TL_photoStrippedSize)) ? null : "b", null, null, tLRPC$User, menuItemArr, new UserInfoLoadTask(tLRPC$User, i));
        }

        /* renamed from: of */
        public static Data m69of(TLRPC$UserFull tLRPC$UserFull, MenuItem... menuItemArr) {
            ImageLocation imageLocation;
            String str;
            ImageLocation forUserOrChat = ImageLocation.getForUserOrChat(tLRPC$UserFull.user, 0);
            ImageLocation forUserOrChat2 = ImageLocation.getForUserOrChat(tLRPC$UserFull.user, 1);
            String str2 = null;
            String str3 = (forUserOrChat2 == null || !(forUserOrChat2.photoSize instanceof TLRPC$TL_photoStrippedSize)) ? null : "b";
            TLRPC$Photo tLRPC$Photo = tLRPC$UserFull.profile_photo;
            if (tLRPC$Photo == null || tLRPC$Photo.video_sizes.isEmpty()) {
                imageLocation = null;
                str = null;
            } else {
                TLRPC$VideoSize tLRPC$VideoSize = tLRPC$UserFull.profile_photo.video_sizes.get(0);
                ImageLocation forPhoto = ImageLocation.getForPhoto(tLRPC$VideoSize, tLRPC$UserFull.profile_photo);
                str = FileLoader.getAttachFileName(tLRPC$VideoSize);
                imageLocation = forPhoto;
            }
            if (imageLocation != null && imageLocation.imageType == 2) {
                str2 = ImageLoader.AUTOPLAY_FILTER;
            }
            return new Data(forUserOrChat, forUserOrChat2, imageLocation, null, str3, str2, str, tLRPC$UserFull.user, menuItemArr, null);
        }

        /* renamed from: of */
        public static Data m72of(TLRPC$Chat tLRPC$Chat, int i, MenuItem... menuItemArr) {
            ImageLocation forUserOrChat = ImageLocation.getForUserOrChat(tLRPC$Chat, 0);
            ImageLocation forUserOrChat2 = ImageLocation.getForUserOrChat(tLRPC$Chat, 1);
            return new Data(forUserOrChat, forUserOrChat2, null, null, (forUserOrChat2 == null || !(forUserOrChat2.photoSize instanceof TLRPC$TL_photoStrippedSize)) ? null : "b", null, null, tLRPC$Chat, menuItemArr, new ChatInfoLoadTask(tLRPC$Chat, i));
        }

        /* renamed from: of */
        public static Data m71of(TLRPC$Chat tLRPC$Chat, TLRPC$ChatFull tLRPC$ChatFull, MenuItem... menuItemArr) {
            ImageLocation imageLocation;
            String str;
            ImageLocation forUserOrChat = ImageLocation.getForUserOrChat(tLRPC$Chat, 0);
            ImageLocation forUserOrChat2 = ImageLocation.getForUserOrChat(tLRPC$Chat, 1);
            String str2 = (forUserOrChat2 == null || !(forUserOrChat2.photoSize instanceof TLRPC$TL_photoStrippedSize)) ? null : "b";
            TLRPC$Photo tLRPC$Photo = tLRPC$ChatFull.chat_photo;
            if (tLRPC$Photo == null || tLRPC$Photo.video_sizes.isEmpty()) {
                imageLocation = null;
                str = null;
            } else {
                TLRPC$VideoSize tLRPC$VideoSize = tLRPC$ChatFull.chat_photo.video_sizes.get(0);
                imageLocation = ImageLocation.getForPhoto(tLRPC$VideoSize, tLRPC$ChatFull.chat_photo);
                str = FileLoader.getAttachFileName(tLRPC$VideoSize);
            }
            return new Data(forUserOrChat, forUserOrChat2, imageLocation, null, str2, (imageLocation == null || imageLocation.imageType != 2) ? null : ImageLoader.AUTOPLAY_FILTER, str, tLRPC$Chat, menuItemArr, null);
        }

        private Data(ImageLocation imageLocation, ImageLocation imageLocation2, ImageLocation imageLocation3, String str, String str2, String str3, String str4, Object obj, MenuItem[] menuItemArr, InfoLoadTask<?, ?> infoLoadTask) {
            this.imageLocation = imageLocation;
            this.thumbImageLocation = imageLocation2;
            this.videoLocation = imageLocation3;
            this.imageFilter = str;
            this.thumbImageFilter = str2;
            this.videoFilter = str3;
            this.videoFileName = str4;
            this.parentObject = obj;
            this.menuItems = menuItemArr;
            this.infoLoadTask = infoLoadTask;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.AvatarPreviewer$UserInfoLoadTask */
    /* loaded from: classes5.dex */
    public static class UserInfoLoadTask extends InfoLoadTask<TLRPC$User, TLRPC$UserFull> {
        public UserInfoLoadTask(TLRPC$User tLRPC$User, int i) {
            super(tLRPC$User, i, NotificationCenter.userInfoDidLoad);
        }

        @Override // org.telegram.p043ui.AvatarPreviewer.InfoLoadTask
        protected void load() {
            MessagesController.getInstance(UserConfig.selectedAccount).loadUserInfo((TLRPC$User) this.argument, false, this.classGuid);
        }

        @Override // org.telegram.p043ui.AvatarPreviewer.InfoLoadTask
        protected void onReceiveNotification(Object... objArr) {
            if (((Long) objArr[0]).longValue() == ((TLRPC$User) this.argument).f1751id) {
                onResult((TLRPC$UserFull) objArr[1]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.AvatarPreviewer$ChatInfoLoadTask */
    /* loaded from: classes5.dex */
    public static class ChatInfoLoadTask extends InfoLoadTask<TLRPC$Chat, TLRPC$ChatFull> {
        public ChatInfoLoadTask(TLRPC$Chat tLRPC$Chat, int i) {
            super(tLRPC$Chat, i, NotificationCenter.chatInfoDidLoad);
        }

        @Override // org.telegram.p043ui.AvatarPreviewer.InfoLoadTask
        protected void load() {
            MessagesController.getInstance(UserConfig.selectedAccount).loadFullChat(((TLRPC$Chat) this.argument).f1602id, this.classGuid, false);
        }

        @Override // org.telegram.p043ui.AvatarPreviewer.InfoLoadTask
        protected void onReceiveNotification(Object... objArr) {
            TLRPC$ChatFull tLRPC$ChatFull = (TLRPC$ChatFull) objArr[0];
            if (tLRPC$ChatFull == null || tLRPC$ChatFull.f1603id != ((TLRPC$Chat) this.argument).f1602id) {
                return;
            }
            onResult(tLRPC$ChatFull);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.AvatarPreviewer$InfoLoadTask */
    /* loaded from: classes5.dex */
    public static abstract class InfoLoadTask<A, B> {
        protected final A argument;
        protected final int classGuid;
        private boolean loading;
        private final int notificationId;
        private Consumer<B> onResult;
        private final NotificationCenter.NotificationCenterDelegate observer = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.AvatarPreviewer.InfoLoadTask.1
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public void didReceivedNotification(int i, int i2, Object... objArr) {
                if (InfoLoadTask.this.loading && i == InfoLoadTask.this.notificationId) {
                    InfoLoadTask.this.onReceiveNotification(objArr);
                }
            }
        };
        private final NotificationCenter notificationCenter = NotificationCenter.getInstance(UserConfig.selectedAccount);

        protected abstract void load();

        protected abstract void onReceiveNotification(Object... objArr);

        public InfoLoadTask(A a, int i, int i2) {
            this.argument = a;
            this.classGuid = i;
            this.notificationId = i2;
        }

        public final void load(Consumer<B> consumer) {
            if (this.loading) {
                return;
            }
            this.loading = true;
            this.onResult = consumer;
            this.notificationCenter.addObserver(this.observer, this.notificationId);
            load();
        }

        public final void cancel() {
            if (this.loading) {
                this.loading = false;
                this.notificationCenter.removeObserver(this.observer, this.notificationId);
            }
        }

        protected final void onResult(B b) {
            if (this.loading) {
                cancel();
                this.onResult.accept(b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.AvatarPreviewer$Layout */
    /* loaded from: classes5.dex */
    public static abstract class Layout extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
        private final Drawable arrowDrawable;
        private final ColorDrawable backgroundDrawable;
        private final Callback callback;
        private float downY;
        private final ImageReceiver imageReceiver;
        private InfoLoadTask<?, ?> infoLoadTask;
        private WindowInsets insets;
        private final Interpolator interpolator;
        private long lastUpdateTime;
        private MenuItem[] menuItems;
        private ValueAnimator moveAnimator;
        private float moveProgress;
        private float progress;
        private ValueAnimator progressHideAnimator;
        private ValueAnimator progressShowAnimator;
        private final RadialProgress2 radialProgress;
        private final int radialProgressSize;
        private boolean recycled;
        private boolean showProgress;
        private boolean showing;
        private String videoFileName;
        private BottomSheet visibleSheet;

        protected abstract void onHide();

        public Layout(Context context, Callback callback) {
            super(context);
            this.radialProgressSize = AndroidUtilities.m108dp(64.0f);
            new Rect();
            this.interpolator = new AccelerateDecelerateInterpolator();
            this.backgroundDrawable = new ColorDrawable(1895825408);
            ImageReceiver imageReceiver = new ImageReceiver();
            this.imageReceiver = imageReceiver;
            this.downY = -1.0f;
            this.callback = callback;
            setWillNotDraw(false);
            setFitsSystemWindows(true);
            imageReceiver.setAspectFit(true);
            imageReceiver.setInvalidateAll(true);
            imageReceiver.setRoundRadius(AndroidUtilities.m107dp(6));
            imageReceiver.setParentView(this);
            RadialProgress2 radialProgress2 = new RadialProgress2(this);
            this.radialProgress = radialProgress2;
            radialProgress2.setOverrideAlpha(BitmapDescriptorFactory.HUE_RED);
            radialProgress2.setIcon(10, false, false);
            radialProgress2.setColors(1107296256, 1107296256, -1, -1);
            this.arrowDrawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.preview_arrow);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.imageReceiver.onAttachedToWindow();
            NotificationCenter.getInstance(UserConfig.selectedAccount).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(UserConfig.selectedAccount).addObserver(this, NotificationCenter.fileLoadProgressChanged);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.imageReceiver.onDetachedFromWindow();
            NotificationCenter.getInstance(UserConfig.selectedAccount).removeObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(UserConfig.selectedAccount).removeObserver(this, NotificationCenter.fileLoadProgressChanged);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (!this.showProgress || TextUtils.isEmpty(this.videoFileName)) {
                return;
            }
            if (i == NotificationCenter.fileLoaded) {
                if (TextUtils.equals((String) objArr[0], this.videoFileName)) {
                    this.radialProgress.setProgress(1.0f, true);
                }
            } else if (i == NotificationCenter.fileLoadProgressChanged && TextUtils.equals((String) objArr[0], this.videoFileName) && this.radialProgress != null) {
                this.radialProgress.setProgress(Math.min(1.0f, ((float) ((Long) objArr[1]).longValue()) / ((float) ((Long) objArr[2]).longValue())), true);
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this.showing) {
                if (this.moveAnimator == null) {
                    if (motionEvent.getActionMasked() == 1) {
                        this.downY = -1.0f;
                        setShowing(false);
                    } else if (motionEvent.getActionMasked() == 2) {
                        if (this.downY < BitmapDescriptorFactory.HUE_RED) {
                            this.downY = motionEvent.getY();
                        } else {
                            float max = Math.max(-1.0f, Math.min((float) BitmapDescriptorFactory.HUE_RED, (motionEvent.getY() - this.downY) / AndroidUtilities.m107dp(56)));
                            this.moveProgress = max;
                            if (max == -1.0f) {
                                performHapticFeedback(0);
                                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.moveProgress, BitmapDescriptorFactory.HUE_RED);
                                this.moveAnimator = ofFloat;
                                ofFloat.setDuration(200L);
                                this.moveAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.AvatarPreviewer$Layout$$ExternalSyntheticLambda0
                                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                        AvatarPreviewer.Layout.this.lambda$onTouchEvent$0(valueAnimator);
                                    }
                                });
                                this.moveAnimator.start();
                                showBottomSheet();
                            }
                            invalidate();
                        }
                    }
                }
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$0(ValueAnimator valueAnimator) {
            this.moveProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        private void showBottomSheet() {
            MenuItem[] menuItemArr = this.menuItems;
            CharSequence[] charSequenceArr = new CharSequence[menuItemArr.length];
            int[] iArr = new int[menuItemArr.length];
            int i = 0;
            while (true) {
                MenuItem[] menuItemArr2 = this.menuItems;
                if (i < menuItemArr2.length) {
                    charSequenceArr[i] = LocaleController.getString(menuItemArr2[i].labelKey, this.menuItems[i].labelResId);
                    iArr[i] = this.menuItems[i].iconResId;
                    i++;
                } else {
                    BottomSheet dimBehind = new BottomSheet.Builder(getContext()).setItems(charSequenceArr, iArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.AvatarPreviewer$Layout$$ExternalSyntheticLambda3
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            AvatarPreviewer.Layout.this.lambda$showBottomSheet$1(dialogInterface, i2);
                        }
                    }).setDimBehind(false);
                    this.visibleSheet = dimBehind;
                    dimBehind.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.AvatarPreviewer$Layout$$ExternalSyntheticLambda4
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            AvatarPreviewer.Layout.this.lambda$showBottomSheet$2(dialogInterface);
                        }
                    });
                    this.visibleSheet.show();
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showBottomSheet$1(DialogInterface dialogInterface, int i) {
            this.callback.onMenuClick(this.menuItems[i]);
            setShowing(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showBottomSheet$2(DialogInterface dialogInterface) {
            this.visibleSheet = null;
            setShowing(false);
        }

        @Override // android.view.View
        public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
            this.insets = windowInsets;
            invalidateSize();
            return windowInsets.consumeStableInsets();
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            invalidateSize();
        }

        public void invalidateSize() {
            int i;
            int i2;
            int width = getWidth();
            int height = getHeight();
            if (width == 0 || height == 0) {
                return;
            }
            this.backgroundDrawable.setBounds(0, 0, width, height);
            int m107dp = AndroidUtilities.m107dp(8);
            if (Build.VERSION.SDK_INT >= 21) {
                int stableInsetLeft = this.insets.getStableInsetLeft() + m107dp;
                i2 = this.insets.getStableInsetRight() + m107dp;
                i = m107dp + Math.max(this.insets.getStableInsetTop(), this.insets.getStableInsetBottom());
                m107dp = stableInsetLeft;
            } else {
                i = m107dp;
                i2 = i;
            }
            int intrinsicWidth = this.arrowDrawable.getIntrinsicWidth();
            int intrinsicHeight = this.arrowDrawable.getIntrinsicHeight();
            int m107dp2 = AndroidUtilities.m107dp(24);
            int i3 = width - (i2 + m107dp);
            int i4 = height - (i * 2);
            int min = Math.min(i3, i4);
            int i5 = intrinsicHeight / 2;
            int i6 = m107dp2 + i5;
            int i7 = ((i3 - min) / 2) + m107dp;
            int i8 = ((i4 - min) / 2) + i + (i3 > i4 ? i6 : 0);
            this.imageReceiver.setImageCoords(i7, i8, min, min - (i3 > i4 ? i6 : 0));
            int centerX = (int) this.imageReceiver.getCenterX();
            int centerY = (int) this.imageReceiver.getCenterY();
            RadialProgress2 radialProgress2 = this.radialProgress;
            int i9 = this.radialProgressSize;
            radialProgress2.setProgressRect(centerX - (i9 / 2), centerY - (i9 / 2), centerX + (i9 / 2), centerY + (i9 / 2));
            int i10 = i7 + (min / 2);
            int i11 = i8 - m107dp2;
            int i12 = intrinsicWidth / 2;
            this.arrowDrawable.setBounds(i10 - i12, i11 - i5, i10 + i12, i11 + i5);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x01a7  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x01b4  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r10) {
            /*
                Method dump skipped, instructions count: 458
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.AvatarPreviewer.Layout.onDraw(android.graphics.Canvas):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$3(ValueAnimator valueAnimator) {
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$4(ValueAnimator valueAnimator) {
            invalidate();
        }

        public void setData(final Data data) {
            this.menuItems = data.menuItems;
            this.showProgress = data.videoLocation != null;
            this.videoFileName = data.videoFileName;
            recycleInfoLoadTask();
            if (data.infoLoadTask != null) {
                InfoLoadTask<?, ?> infoLoadTask = data.infoLoadTask;
                this.infoLoadTask = infoLoadTask;
                infoLoadTask.load(new Consumer() { // from class: org.telegram.ui.AvatarPreviewer$Layout$$ExternalSyntheticLambda5
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        AvatarPreviewer.Layout.this.lambda$setData$5(data, obj);
                    }
                });
            }
            this.imageReceiver.setCurrentAccount(UserConfig.selectedAccount);
            this.imageReceiver.setImage(data.videoLocation, data.videoFilter, data.imageLocation, data.imageFilter, data.thumbImageLocation, data.thumbImageFilter, null, 0L, null, data.parentObject, 1);
            setShowing(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setData$5(Data data, Object obj) {
            if (this.recycled) {
                return;
            }
            if (obj instanceof TLRPC$UserFull) {
                setData(Data.m69of((TLRPC$UserFull) obj, data.menuItems));
            } else if (obj instanceof TLRPC$ChatFull) {
                setData(Data.m71of((TLRPC$Chat) data.infoLoadTask.argument, (TLRPC$ChatFull) obj, data.menuItems));
            }
        }

        private void setShowing(boolean z) {
            if (this.showing != z) {
                this.showing = z;
                this.lastUpdateTime = AnimationUtils.currentAnimationTimeMillis();
                invalidate();
            }
        }

        public void recycle() {
            this.recycled = true;
            ValueAnimator valueAnimator = this.moveAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            BottomSheet bottomSheet = this.visibleSheet;
            if (bottomSheet != null) {
                bottomSheet.cancel();
            }
            recycleInfoLoadTask();
        }

        private void recycleInfoLoadTask() {
            InfoLoadTask<?, ?> infoLoadTask = this.infoLoadTask;
            if (infoLoadTask != null) {
                infoLoadTask.cancel();
                this.infoLoadTask = null;
            }
        }
    }
}
