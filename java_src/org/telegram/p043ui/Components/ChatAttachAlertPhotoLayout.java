package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import moxy.MvpDelegate;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.camera.CameraController;
import org.telegram.messenger.camera.CameraSession;
import org.telegram.messenger.camera.CameraView;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.PhotoAttachCameraCell;
import org.telegram.p043ui.Cells.PhotoAttachPermissionCell;
import org.telegram.p043ui.Cells.PhotoAttachPhotoCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AvatarConstructorFragment;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.ChatAttachAlert;
import org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.RecyclerViewItemRangeSelector;
import org.telegram.p043ui.Components.ShutterButton;
import org.telegram.p043ui.Components.ZoomControlView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.p043ui.Stories.recorder.AlbumButton;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$TL_videoSizeEmojiMarkup;
import org.telegram.tgnet.TLRPC$TL_videoSizeStickerMarkup;
import org.telegram.tgnet.TLRPC$VideoSize;
/* renamed from: org.telegram.ui.Components.ChatAttachAlertPhotoLayout */
/* loaded from: classes6.dex */
public class ChatAttachAlertPhotoLayout extends ChatAttachAlert.AttachAlertLayout implements NotificationCenter.NotificationCenterDelegate {
    private static boolean mediaFromExternalCamera;
    private PhotoAttachAdapter adapter;
    float additionCloseCameraY;
    private Runnable afterCameraInitRunnable;
    private int alertOnlyOnce;
    private int[] animateCameraValues;
    float animationClipBottom;
    float animationClipLeft;
    float animationClipRight;
    float animationClipTop;
    private boolean cameraAnimationInProgress;
    private PhotoAttachAdapter cameraAttachAdapter;
    protected PhotoAttachCameraCell cameraCell;
    private Drawable cameraDrawable;
    boolean cameraExpanded;
    protected FrameLayout cameraIcon;
    private AnimatorSet cameraInitAnimation;
    private float cameraOpenProgress;
    private boolean cameraOpened;
    private FrameLayout cameraPanel;
    private LinearLayoutManager cameraPhotoLayoutManager;
    private RecyclerListView cameraPhotoRecyclerView;
    private boolean cameraPhotoRecyclerViewIgnoreLayout;
    protected CameraView cameraView;
    private float[] cameraViewLocation;
    private float cameraViewOffsetBottomY;
    private float cameraViewOffsetX;
    private float cameraViewOffsetY;
    private float cameraZoom;
    private boolean canSaveCameraPreview;
    private boolean cancelTakingPhotos;
    private boolean checkCameraWhenShown;
    private ActionBarMenuSubItem compressItem;
    private TextView counterTextView;
    private float currentPanTranslationY;
    private int currentSelectedCount;
    private boolean deviceHasGoodCamera;
    private boolean documentsEnabled;
    private boolean dragging;
    public TextView dropDown;
    private ArrayList<MediaController.AlbumEntry> dropDownAlbums;
    private ActionBarMenuItem dropDownContainer;
    private Drawable dropDownDrawable;
    private boolean flashAnimationInProgress;
    private ImageView[] flashModeButton;
    boolean forceDarkTheme;
    private MediaController.AlbumEntry galleryAlbumEntry;
    private int gridExtraSpace;
    public RecyclerListView gridView;
    private ViewPropertyAnimator headerAnimator;
    private Rect hitRect;
    private boolean ignoreLayout;
    private DecelerateInterpolator interpolator;
    private Boolean isCameraFrontfaceBeforeEnteringEditMode;
    private boolean isHidden;
    private RecyclerViewItemRangeSelector itemRangeSelector;
    private int itemSize;
    private int itemsPerRow;
    private int lastItemSize;
    private int lastNotifyWidth;
    private float lastY;
    private GridLayoutManager layoutManager;
    private boolean loading;
    private boolean maybeStartDraging;
    private boolean mediaEnabled;
    private final boolean needCamera;
    private boolean noCameraPermissions;
    private boolean noGalleryPermissions;
    private AnimationNotificationsLocker notificationsLocker;
    private boolean photoEnabled;
    private PhotoViewer.PhotoViewerProvider photoViewerProvider;
    private float pinchStartDistance;
    private boolean pressed;
    protected ActionBarMenuSubItem previewItem;
    private EmptyTextProgressView progressView;
    private TextView recordTime;
    private boolean requestingPermissions;
    private MediaController.AlbumEntry selectedAlbumEntry;
    private boolean shouldSelect;
    private boolean showAvatarConstructor;
    private ShutterButton shutterButton;
    private ActionBarMenuSubItem spoilerItem;
    private ImageView switchCameraButton;
    private boolean takingPhoto;
    private TextView tooltipTextView;
    private boolean videoEnabled;
    private Runnable videoRecordRunnable;
    private int videoRecordTime;
    private int[] viewPosition;
    private AnimatorSet zoomControlAnimation;
    private Runnable zoomControlHideRunnable;
    private ZoomControlView zoomControlView;
    private boolean zoomWas;
    private boolean zooming;
    private static ArrayList<Object> cameraPhotos = new ArrayList<>();
    private static HashMap<Object, Object> selectedPhotos = new HashMap<>();
    private static ArrayList<Object> selectedPhotosOrder = new ArrayList<>();
    public static int lastImageId = -1;

    public static int getOpenInSubItemId() {
        return 3;
    }

    public static int getSendWithoutGroupingSubItemId() {
        return 0;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, org.koin.core.component.KoinComponent
    public /* bridge */ /* synthetic */ Koin getKoin() {
        Koin koin;
        koin = KoinJavaComponent.getKoin();
        return koin;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, com.iMe.p030ui.base.mvp.view.ICustomMvpView, moxy.MvpDelegateHolder
    public /* bridge */ /* synthetic */ MvpDelegate<T> getMvpDelegate() {
        MvpDelegate<T> mMvpDelegate;
        mMvpDelegate = getMMvpDelegate();
        return mMvpDelegate;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 1;
    }

    static /* synthetic */ int access$2908(ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout) {
        int i = chatAttachAlertPhotoLayout.videoRecordTime;
        chatAttachAlertPhotoLayout.videoRecordTime = i + 1;
        return i;
    }

    public void updateAvatarPicker() {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        this.showAvatarConstructor = (chatAttachAlert.avatarPicker == 0 || chatAttachAlert.isPhotoPicker) ? false : true;
    }

    /* renamed from: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$BasePhotoProvider */
    /* loaded from: classes6.dex */
    private class BasePhotoProvider extends PhotoViewer.EmptyPhotoViewerProvider {
        private BasePhotoProvider() {
        }

        /* synthetic */ BasePhotoProvider(ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout, C48091 c48091) {
            this();
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public boolean isPhotoChecked(int i) {
            MediaController.PhotoEntry photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
            return photoEntryAtPosition != null && ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId));
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public int setPhotoChecked(int i, VideoEditedInfo videoEditedInfo) {
            MediaController.PhotoEntry photoEntryAtPosition;
            boolean z;
            if ((ChatAttachAlertPhotoLayout.this.parentAlert.maxSelectedPhotos >= 0 && ChatAttachAlertPhotoLayout.selectedPhotos.size() >= ChatAttachAlertPhotoLayout.this.parentAlert.maxSelectedPhotos && !isPhotoChecked(i)) || (photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i)) == null || ChatAttachAlertPhotoLayout.this.checkSendMediaEnabled(photoEntryAtPosition)) {
                return -1;
            }
            int addToSelectedPhotos = ChatAttachAlertPhotoLayout.this.addToSelectedPhotos(photoEntryAtPosition, -1);
            if (addToSelectedPhotos == -1) {
                addToSelectedPhotos = ChatAttachAlertPhotoLayout.selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId));
                z = true;
            } else {
                photoEntryAtPosition.editedInfo = null;
                z = false;
            }
            photoEntryAtPosition.editedInfo = videoEditedInfo;
            int childCount = ChatAttachAlertPhotoLayout.this.gridView.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = ChatAttachAlertPhotoLayout.this.gridView.getChildAt(i2);
                if ((childAt instanceof PhotoAttachPhotoCell) && ((Integer) childAt.getTag()).intValue() == i) {
                    ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
                    if ((chatAttachAlert.baseFragment instanceof ChatActivity) && chatAttachAlert.allowOrder) {
                        ((PhotoAttachPhotoCell) childAt).setChecked(addToSelectedPhotos, z, false);
                    } else {
                        ((PhotoAttachPhotoCell) childAt).setChecked(-1, z, false);
                    }
                } else {
                    i2++;
                }
            }
            int childCount2 = ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount2) {
                    break;
                }
                View childAt2 = ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.getChildAt(i3);
                if ((childAt2 instanceof PhotoAttachPhotoCell) && ((Integer) childAt2.getTag()).intValue() == i) {
                    ChatAttachAlert chatAttachAlert2 = ChatAttachAlertPhotoLayout.this.parentAlert;
                    if ((chatAttachAlert2.baseFragment instanceof ChatActivity) && chatAttachAlert2.allowOrder) {
                        ((PhotoAttachPhotoCell) childAt2).setChecked(addToSelectedPhotos, z, false);
                    } else {
                        ((PhotoAttachPhotoCell) childAt2).setChecked(-1, z, false);
                    }
                } else {
                    i3++;
                }
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.updateCountButton(z ? 1 : 2);
            return addToSelectedPhotos;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public int getSelectedCount() {
            return ChatAttachAlertPhotoLayout.selectedPhotos.size();
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public ArrayList<Object> getSelectedPhotosOrder() {
            return ChatAttachAlertPhotoLayout.selectedPhotosOrder;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public HashMap<Object, Object> getSelectedPhotos() {
            return ChatAttachAlertPhotoLayout.selectedPhotos;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public int getPhotoIndex(int i) {
            MediaController.PhotoEntry photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
            if (photoEntryAtPosition == null) {
                return -1;
            }
            return ChatAttachAlertPhotoLayout.selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentSpoilerVisible(int i, final boolean z) {
        PhotoViewer photoViewer = PhotoViewer.getInstance();
        if (i == -1) {
            i = photoViewer.getCurrentIndex();
        }
        List<Object> imagesArrLocals = photoViewer.getImagesArrLocals();
        if (imagesArrLocals != null && !imagesArrLocals.isEmpty() && i < imagesArrLocals.size() && (imagesArrLocals.get(i) instanceof MediaController.PhotoEntry) && ((MediaController.PhotoEntry) imagesArrLocals.get(i)).hasSpoiler) {
            final MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) imagesArrLocals.get(i);
            this.gridView.forAllChild(new Consumer() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda6
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ChatAttachAlertPhotoLayout.lambda$setCurrentSpoilerVisible$0(MediaController.PhotoEntry.this, z, (View) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setCurrentSpoilerVisible$0(MediaController.PhotoEntry photoEntry, boolean z, View view) {
        if (view instanceof PhotoAttachPhotoCell) {
            PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) view;
            if (photoAttachPhotoCell.getPhotoEntry() == photoEntry) {
                photoAttachPhotoCell.setHasSpoiler(z, Float.valueOf(250.0f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$1 */
    /* loaded from: classes6.dex */
    public class C48091 extends BasePhotoProvider {
        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public boolean cancelButtonPressed() {
            return false;
        }

        C48091() {
            super(ChatAttachAlertPhotoLayout.this, null);
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void onOpen() {
            ChatAttachAlertPhotoLayout.this.pauseCameraPreview();
            ChatAttachAlertPhotoLayout.this.setCurrentSpoilerVisible(-1, true);
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void onPreClose() {
            ChatAttachAlertPhotoLayout.this.setCurrentSpoilerVisible(-1, false);
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void onClose() {
            ChatAttachAlertPhotoLayout.this.resumeCameraPreview();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlertPhotoLayout.C48091.this.lambda$onClose$0();
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClose$0() {
            ChatAttachAlertPhotoLayout.this.setCurrentSpoilerVisible(-1, true);
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void onEditModeChanged(boolean z) {
            ChatAttachAlertPhotoLayout.this.onPhotoEditModeChanged(z);
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i, boolean z) {
            PhotoAttachPhotoCell cellForIndex = ChatAttachAlertPhotoLayout.this.getCellForIndex(i);
            if (cellForIndex != null) {
                int[] iArr = new int[2];
                cellForIndex.getImageView().getLocationInWindow(iArr);
                if (Build.VERSION.SDK_INT < 26) {
                    iArr[0] = iArr[0] - ChatAttachAlertPhotoLayout.this.parentAlert.getLeftInset();
                }
                PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                placeProviderObject.viewX = iArr[0];
                placeProviderObject.viewY = iArr[1];
                placeProviderObject.parentView = ChatAttachAlertPhotoLayout.this.gridView;
                ImageReceiver imageReceiver = cellForIndex.getImageView().getImageReceiver();
                placeProviderObject.imageReceiver = imageReceiver;
                placeProviderObject.thumb = imageReceiver.getBitmapSafe();
                placeProviderObject.scale = cellForIndex.getScale();
                placeProviderObject.clipBottomAddition = (int) ChatAttachAlertPhotoLayout.this.parentAlert.getClipLayoutBottom();
                cellForIndex.showCheck(false);
                return placeProviderObject;
            }
            return null;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void updatePhotoAtIndex(int i) {
            PhotoAttachPhotoCell cellForIndex = ChatAttachAlertPhotoLayout.this.getCellForIndex(i);
            if (cellForIndex != null) {
                cellForIndex.getImageView().setOrientation(0, true);
                MediaController.PhotoEntry photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
                if (photoEntryAtPosition == null) {
                    return;
                }
                if (photoEntryAtPosition.thumbPath != null) {
                    cellForIndex.getImageView().setImage(photoEntryAtPosition.thumbPath, null, Theme.chat_attachEmptyDrawable);
                } else if (photoEntryAtPosition.path != null) {
                    cellForIndex.getImageView().setOrientation(photoEntryAtPosition.orientation, photoEntryAtPosition.invert, true);
                    if (photoEntryAtPosition.isVideo) {
                        BackupImageView imageView = cellForIndex.getImageView();
                        imageView.setImage("vthumb://" + photoEntryAtPosition.imageId + ":" + photoEntryAtPosition.path, null, Theme.chat_attachEmptyDrawable);
                        return;
                    }
                    BackupImageView imageView2 = cellForIndex.getImageView();
                    imageView2.setImage("thumb://" + photoEntryAtPosition.imageId + ":" + photoEntryAtPosition.path, null, Theme.chat_attachEmptyDrawable);
                } else {
                    cellForIndex.getImageView().setImageDrawable(Theme.chat_attachEmptyDrawable);
                }
            }
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public ImageReceiver.BitmapHolder getThumbForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i) {
            PhotoAttachPhotoCell cellForIndex = ChatAttachAlertPhotoLayout.this.getCellForIndex(i);
            if (cellForIndex != null) {
                return cellForIndex.getImageView().getImageReceiver().getBitmapSafe();
            }
            return null;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void willSwitchFromPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i) {
            PhotoAttachPhotoCell cellForIndex = ChatAttachAlertPhotoLayout.this.getCellForIndex(i);
            if (cellForIndex != null) {
                cellForIndex.showCheck(true);
            }
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void willHidePhotoViewer() {
            int childCount = ChatAttachAlertPhotoLayout.this.gridView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ChatAttachAlertPhotoLayout.this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    ((PhotoAttachPhotoCell) childAt).showCheck(true);
                }
            }
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void onApplyCaption(CharSequence charSequence) {
            if (ChatAttachAlertPhotoLayout.selectedPhotos.size() <= 0 || ChatAttachAlertPhotoLayout.selectedPhotosOrder.size() <= 0) {
                return;
            }
            Object obj = ChatAttachAlertPhotoLayout.selectedPhotos.get(ChatAttachAlertPhotoLayout.selectedPhotosOrder.get(0));
            CharSequence charSequence2 = obj instanceof MediaController.PhotoEntry ? ((MediaController.PhotoEntry) obj).caption : null;
            if (obj instanceof MediaController.SearchImage) {
                charSequence2 = ((MediaController.SearchImage) obj).caption;
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.commentTextView.setText(AnimatedEmojiSpan.cloneSpans(charSequence2, 3));
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, boolean z, int i2, boolean z2, String str, boolean z3) {
            MediaController.PhotoEntry photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
            if (photoEntryAtPosition != null) {
                photoEntryAtPosition.editedInfo = videoEditedInfo;
            }
            if (ChatAttachAlertPhotoLayout.selectedPhotos.isEmpty() && photoEntryAtPosition != null) {
                ChatAttachAlertPhotoLayout.this.addToSelectedPhotos(photoEntryAtPosition, -1);
            }
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            if (chatAttachAlert.checkCaption(chatAttachAlert.commentTextView.getText())) {
                return;
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.applyCaption();
            if (PhotoViewer.getInstance().hasCaptionForAllMedia) {
                HashMap<Object, Object> selectedPhotos = getSelectedPhotos();
                ArrayList<Object> selectedPhotosOrder = getSelectedPhotosOrder();
                if (!selectedPhotos.isEmpty()) {
                    for (int i3 = 0; i3 < selectedPhotosOrder.size(); i3++) {
                        Object obj = selectedPhotos.get(selectedPhotosOrder.get(i3));
                        if (obj instanceof MediaController.PhotoEntry) {
                            MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                            if (i3 == 0) {
                                CharSequence[] charSequenceArr = {PhotoViewer.getInstance().captionForAllMedia};
                                photoEntry.entities = MediaDataController.getInstance(UserConfig.selectedAccount).getEntities(charSequenceArr, false);
                                CharSequence charSequence = charSequenceArr[0];
                                photoEntry.caption = charSequence;
                                if (ChatAttachAlertPhotoLayout.this.parentAlert.checkCaption(charSequence)) {
                                    return;
                                }
                            } else {
                                photoEntry.caption = null;
                            }
                        }
                    }
                }
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.delegate.didPressedButton(7, true, z, i2, z2, str, z3);
            ChatAttachAlertPhotoLayout.selectedPhotos.clear();
            ChatAttachAlertPhotoLayout.cameraPhotos.clear();
            ChatAttachAlertPhotoLayout.selectedPhotosOrder.clear();
            ChatAttachAlertPhotoLayout.selectedPhotos.clear();
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public boolean allowCaption() {
            return !ChatAttachAlertPhotoLayout.this.parentAlert.isPhotoPicker;
        }
    }

    protected void updateCheckedPhotoIndices() {
        if (this.parentAlert.baseFragment instanceof ChatActivity) {
            int childCount = this.gridView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    MediaController.PhotoEntry photoEntryAtPosition = getPhotoEntryAtPosition(((Integer) photoAttachPhotoCell.getTag()).intValue());
                    if (photoEntryAtPosition != null) {
                        photoAttachPhotoCell.setNum(selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId)));
                    }
                }
            }
            int childCount2 = this.cameraPhotoRecyclerView.getChildCount();
            for (int i2 = 0; i2 < childCount2; i2++) {
                View childAt2 = this.cameraPhotoRecyclerView.getChildAt(i2);
                if (childAt2 instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell2 = (PhotoAttachPhotoCell) childAt2;
                    MediaController.PhotoEntry photoEntryAtPosition2 = getPhotoEntryAtPosition(((Integer) photoAttachPhotoCell2.getTag()).intValue());
                    if (photoEntryAtPosition2 != null) {
                        photoAttachPhotoCell2.setNum(selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition2.imageId)));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaController.PhotoEntry getPhotoEntryAtPosition(int i) {
        if (i < 0) {
            return null;
        }
        int size = cameraPhotos.size();
        if (i < size) {
            return (MediaController.PhotoEntry) cameraPhotos.get(i);
        }
        int i2 = i - size;
        MediaController.AlbumEntry albumEntry = this.selectedAlbumEntry;
        if (albumEntry == null || i2 >= albumEntry.photos.size()) {
            return null;
        }
        return this.selectedAlbumEntry.photos.get(i2);
    }

    protected ArrayList<Object> getAllPhotosArray() {
        if (this.selectedAlbumEntry != null) {
            if (!cameraPhotos.isEmpty()) {
                ArrayList<Object> arrayList = new ArrayList<>(this.selectedAlbumEntry.photos.size() + cameraPhotos.size());
                arrayList.addAll(cameraPhotos);
                arrayList.addAll(this.selectedAlbumEntry.photos);
                return arrayList;
            }
            return this.selectedAlbumEntry.photos;
        } else if (!cameraPhotos.isEmpty()) {
            return cameraPhotos;
        } else {
            return new ArrayList<>(0);
        }
    }

    public ChatAttachAlertPhotoLayout(ChatAttachAlert chatAttachAlert, Context context, boolean z, final boolean z2, final Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.flashModeButton = new ImageView[2];
        this.cameraViewLocation = new float[2];
        this.viewPosition = new int[2];
        this.animateCameraValues = new int[5];
        this.interpolator = new DecelerateInterpolator(1.5f);
        this.isCameraFrontfaceBeforeEnteringEditMode = null;
        this.hitRect = new Rect();
        int m107dp = AndroidUtilities.m107dp(80);
        this.itemSize = m107dp;
        this.lastItemSize = m107dp;
        this.itemsPerRow = 3;
        this.loading = true;
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.photoViewerProvider = new C48091();
        this.forceDarkTheme = z;
        this.needCamera = z2;
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.cameraInitied);
        BottomSheet.ContainerView container = chatAttachAlert.getContainer();
        this.showAvatarConstructor = this.parentAlert.avatarPicker != 0;
        this.cameraDrawable = context.getResources().getDrawable(C3632R.C3634drawable.instant_camera).mutate();
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, this.parentAlert.actionBar.createMenu(), 0, 0, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.2
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem, android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setText(ChatAttachAlertPhotoLayout.this.dropDown.getText());
            }
        };
        this.dropDownContainer = actionBarMenuItem;
        actionBarMenuItem.setSubMenuOpenSide(1);
        this.parentAlert.actionBar.addView(this.dropDownContainer, 0, LayoutHelper.createFrame(-2, -1, 51, AndroidUtilities.isTablet() ? 64 : 56, 0, 40, 0));
        this.dropDownContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatAttachAlertPhotoLayout.this.lambda$new$1(view);
            }
        });
        TextView textView = new TextView(context);
        this.dropDown = textView;
        textView.setImportantForAccessibility(2);
        this.dropDown.setGravity(3);
        this.dropDown.setSingleLine(true);
        this.dropDown.setLines(1);
        this.dropDown.setMaxLines(1);
        this.dropDown.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView2 = this.dropDown;
        int i = Theme.key_dialogTextBlack;
        textView2.setTextColor(getThemedColor(i));
        this.dropDown.setText(LocaleController.getString("ChatGallery", C3632R.string.ChatGallery));
        this.dropDown.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.ic_arrow_drop_down).mutate();
        this.dropDownDrawable = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.MULTIPLY));
        this.dropDown.setCompoundDrawablePadding(AndroidUtilities.m107dp(4));
        this.dropDown.setPadding(0, 0, AndroidUtilities.m107dp(10), 0);
        this.dropDownContainer.addView(this.dropDown, LayoutHelper.createFrame(-2, -2, 16, 16, 0, 0, 0));
        checkCamera(false);
        this.compressItem = this.parentAlert.selectedMenuItem.addSubItem(1, C3632R.C3634drawable.msg_filehq, LocaleController.getString("SendWithoutCompression", C3632R.string.SendWithoutCompression));
        this.parentAlert.selectedMenuItem.addSubItem(0, C3632R.C3634drawable.msg_ungroup, LocaleController.getString("SendWithoutGrouping", C3632R.string.SendWithoutGrouping));
        this.spoilerItem = this.parentAlert.selectedMenuItem.addSubItem(2, C3632R.C3634drawable.msg_spoiler, LocaleController.getString("EnablePhotoSpoiler", C3632R.string.EnablePhotoSpoiler));
        this.parentAlert.selectedMenuItem.addSubItem(3, C3632R.C3634drawable.msg_openin, LocaleController.getString("OpenInExternalApp", C3632R.string.OpenInExternalApp));
        this.parentAlert.selectedMenuItem.addColoredGap(4);
        this.previewItem = this.parentAlert.selectedMenuItem.addSubItem(5, C3632R.C3634drawable.msg_view_file, LocaleController.getString("AttachMediaPreviewButton", C3632R.string.AttachMediaPreviewButton));
        this.parentAlert.selectedMenuItem.setFitSubItems(true);
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.3
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || motionEvent.getY() >= ChatAttachAlertPhotoLayout.this.parentAlert.scrollOffsetY[0] - AndroidUtilities.m107dp(80)) {
                    return super.onTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || motionEvent.getY() >= ChatAttachAlertPhotoLayout.this.parentAlert.scrollOffsetY[0] - AndroidUtilities.m107dp(80)) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                return false;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z3, int i2, int i3, int i4, int i5) {
                super.onLayout(z3, i2, i3, i4, i5);
                PhotoViewer.getInstance().checkCurrentImageVisibility();
            }
        };
        this.gridView = recyclerListView;
        recyclerListView.setFastScrollEnabled(1);
        this.gridView.setFastScrollVisible(true);
        this.gridView.getFastScroll().setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.gridView.getFastScroll().usePadding = false;
        RecyclerListView recyclerListView2 = this.gridView;
        PhotoAttachAdapter photoAttachAdapter = new PhotoAttachAdapter(context, z2);
        this.adapter = photoAttachAdapter;
        recyclerListView2.setAdapter(photoAttachAdapter);
        this.adapter.createCache();
        this.gridView.setClipToPadding(false);
        this.gridView.setItemAnimator(null);
        this.gridView.setLayoutAnimation(null);
        this.gridView.setVerticalScrollBarEnabled(false);
        this.gridView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        addView(this.gridView, LayoutHelper.createFrame(-1, -1));
        this.gridView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.4
            boolean parentPinnedToTop;

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (ChatAttachAlertPhotoLayout.this.gridView.getChildCount() <= 0) {
                    return;
                }
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                chatAttachAlertPhotoLayout.parentAlert.updateLayout(chatAttachAlertPhotoLayout, true, i3);
                int totalItemsCount = ChatAttachAlertPhotoLayout.this.adapter.getTotalItemsCount();
                float f = BitmapDescriptorFactory.HUE_RED;
                if (totalItemsCount > 30) {
                    boolean z3 = this.parentPinnedToTop;
                    ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                    boolean z4 = chatAttachAlertPhotoLayout2.parentAlert.pinnedToTop;
                    if (z3 != z4) {
                        this.parentPinnedToTop = z4;
                        ViewPropertyAnimator animate = chatAttachAlertPhotoLayout2.gridView.getFastScroll().animate();
                        if (this.parentPinnedToTop) {
                            f = 1.0f;
                        }
                        animate.alpha(f).setDuration(100L).start();
                    }
                } else {
                    ChatAttachAlertPhotoLayout.this.gridView.getFastScroll().setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                if (i3 != 0) {
                    ChatAttachAlertPhotoLayout.this.checkCameraViewPosition();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                RecyclerListView.Holder holder;
                if (i2 == 0) {
                    int m107dp2 = AndroidUtilities.m107dp(13);
                    ActionBarMenuItem actionBarMenuItem2 = ChatAttachAlertPhotoLayout.this.parentAlert.selectedMenuItem;
                    int m108dp = m107dp2 + (actionBarMenuItem2 != null ? AndroidUtilities.m108dp(actionBarMenuItem2.getAlpha() * 26.0f) : 0);
                    int backgroundPaddingTop = ChatAttachAlertPhotoLayout.this.parentAlert.getBackgroundPaddingTop();
                    if (((ChatAttachAlertPhotoLayout.this.parentAlert.scrollOffsetY[0] - backgroundPaddingTop) - m108dp) + backgroundPaddingTop >= C3704ActionBar.getCurrentActionBarHeight() || (holder = (RecyclerListView.Holder) ChatAttachAlertPhotoLayout.this.gridView.findViewHolderForAdapterPosition(0)) == null || holder.itemView.getTop() <= AndroidUtilities.m107dp(7)) {
                        return;
                    }
                    ChatAttachAlertPhotoLayout.this.gridView.smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.m107dp(7));
                }
            }
        });
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, this.itemSize) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.5
            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.5.1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateDyToMakeVisible(View view, int i3) {
                        return super.calculateDyToMakeVisible(view, i3) - (ChatAttachAlertPhotoLayout.this.gridView.getPaddingTop() - AndroidUtilities.m107dp(7));
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateTimeForDeceleration(int i3) {
                        return super.calculateTimeForDeceleration(i3) * 2;
                    }
                };
                linearSmoothScroller.setTargetPosition(i2);
                startSmoothScroll(linearSmoothScroller);
            }
        };
        this.layoutManager = gridLayoutManager;
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.6
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                if (i2 == ChatAttachAlertPhotoLayout.this.adapter.itemsCount - 1) {
                    return ChatAttachAlertPhotoLayout.this.layoutManager.getSpanCount();
                }
                return ChatAttachAlertPhotoLayout.this.itemSize + (i2 % ChatAttachAlertPhotoLayout.this.itemsPerRow != ChatAttachAlertPhotoLayout.this.itemsPerRow + (-1) ? AndroidUtilities.m107dp(5) : 0);
            }
        });
        this.gridView.setLayoutManager(this.layoutManager);
        this.gridView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda23
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i2) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i2, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i2, f, f2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i2, float f, float f2) {
                ChatAttachAlertPhotoLayout.this.lambda$new$3(z2, resourcesProvider, view, i2, f, f2);
            }
        });
        this.gridView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda24
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                boolean lambda$new$4;
                lambda$new$4 = ChatAttachAlertPhotoLayout.this.lambda$new$4(view, i2);
                return lambda$new$4;
            }
        });
        RecyclerViewItemRangeSelector recyclerViewItemRangeSelector = new RecyclerViewItemRangeSelector(new RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.7
            @Override // org.telegram.p043ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public void setSelected(View view, int i2, boolean z3) {
                if (z3 == ChatAttachAlertPhotoLayout.this.shouldSelect && (view instanceof PhotoAttachPhotoCell)) {
                    ((PhotoAttachPhotoCell) view).callDelegate();
                }
            }

            @Override // org.telegram.p043ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public boolean isSelected(int i2) {
                MediaController.PhotoEntry photo = ChatAttachAlertPhotoLayout.this.adapter.getPhoto(i2);
                return photo != null && ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photo.imageId));
            }

            @Override // org.telegram.p043ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public boolean isIndexSelectable(int i2) {
                return ChatAttachAlertPhotoLayout.this.adapter.getItemViewType(i2) == 0;
            }

            @Override // org.telegram.p043ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public void onStartStopSelection(boolean z3) {
                ChatAttachAlertPhotoLayout.this.alertOnlyOnce = z3 ? 1 : 0;
                ChatAttachAlertPhotoLayout.this.gridView.hideSelector(true);
            }
        });
        this.itemRangeSelector = recyclerViewItemRangeSelector;
        this.gridView.addOnItemTouchListener(recyclerViewItemRangeSelector);
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context, null, resourcesProvider);
        this.progressView = emptyTextProgressView;
        emptyTextProgressView.setText(LocaleController.getString("NoPhotos", C3632R.string.NoPhotos));
        this.progressView.setOnTouchListener(null);
        this.progressView.setTextSize(16);
        addView(this.progressView, LayoutHelper.createFrame(-1, -2));
        if (this.loading) {
            this.progressView.showProgress();
        } else {
            this.progressView.showTextView();
        }
        final Paint paint = new Paint(1);
        paint.setColor(-2468275);
        TextView textView3 = new TextView(this, context) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.8
            float alpha = BitmapDescriptorFactory.HUE_RED;
            boolean isIncr;

            @Override // android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                paint.setAlpha((int) ((this.alpha * 130.0f) + 125.0f));
                if (!this.isIncr) {
                    float f = this.alpha - 0.026666667f;
                    this.alpha = f;
                    if (f <= BitmapDescriptorFactory.HUE_RED) {
                        this.alpha = BitmapDescriptorFactory.HUE_RED;
                        this.isIncr = true;
                    }
                } else {
                    float f2 = this.alpha + 0.026666667f;
                    this.alpha = f2;
                    if (f2 >= 1.0f) {
                        this.alpha = 1.0f;
                        this.isIncr = false;
                    }
                }
                super.onDraw(canvas);
                canvas.drawCircle(AndroidUtilities.m107dp(14), getMeasuredHeight() / 2, AndroidUtilities.m107dp(4), paint);
                invalidate();
            }
        };
        this.recordTime = textView3;
        AndroidUtilities.updateViewVisibilityAnimated(textView3, false, 1.0f, false);
        this.recordTime.setBackgroundResource(C3632R.C3634drawable.system);
        this.recordTime.getBackground().setColorFilter(new PorterDuffColorFilter(1711276032, PorterDuff.Mode.MULTIPLY));
        this.recordTime.setTextSize(1, 15.0f);
        this.recordTime.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.recordTime.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.recordTime.setTextColor(-1);
        this.recordTime.setPadding(AndroidUtilities.m107dp(24), AndroidUtilities.m107dp(5), AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(5));
        container.addView(this.recordTime, LayoutHelper.createFrame(-2, -2, 49, 0, 16, 0, 0));
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.9
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z3, int i2, int i3, int i4, int i5) {
                int measuredWidth;
                int measuredHeight;
                int m107dp2;
                int measuredHeight2;
                int m107dp3;
                int i6;
                if (getMeasuredWidth() == AndroidUtilities.m107dp(126)) {
                    measuredWidth = getMeasuredWidth() / 2;
                    measuredHeight = getMeasuredHeight() / 2;
                    m107dp3 = getMeasuredWidth() / 2;
                    int i7 = measuredHeight / 2;
                    i6 = measuredHeight + i7 + AndroidUtilities.m107dp(17);
                    measuredHeight2 = i7 - AndroidUtilities.m107dp(17);
                    m107dp2 = m107dp3;
                } else {
                    measuredWidth = getMeasuredWidth() / 2;
                    measuredHeight = (getMeasuredHeight() / 2) - AndroidUtilities.m107dp(13);
                    int i8 = measuredWidth / 2;
                    m107dp2 = i8 - AndroidUtilities.m107dp(17);
                    measuredHeight2 = (getMeasuredHeight() / 2) - AndroidUtilities.m107dp(13);
                    m107dp3 = measuredWidth + i8 + AndroidUtilities.m107dp(17);
                    i6 = measuredHeight2;
                }
                int measuredHeight3 = (getMeasuredHeight() - ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredHeight()) - AndroidUtilities.m107dp(12);
                if (getMeasuredWidth() == AndroidUtilities.m107dp(126)) {
                    ChatAttachAlertPhotoLayout.this.tooltipTextView.layout(measuredWidth - (ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredWidth() / 2), getMeasuredHeight(), (ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredWidth() / 2) + measuredWidth, getMeasuredHeight() + ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredHeight());
                } else {
                    ChatAttachAlertPhotoLayout.this.tooltipTextView.layout(measuredWidth - (ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredWidth() / 2), measuredHeight3, (ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredWidth() / 2) + measuredWidth, ChatAttachAlertPhotoLayout.this.tooltipTextView.getMeasuredHeight() + measuredHeight3);
                }
                ChatAttachAlertPhotoLayout.this.shutterButton.layout(measuredWidth - (ChatAttachAlertPhotoLayout.this.shutterButton.getMeasuredWidth() / 2), measuredHeight - (ChatAttachAlertPhotoLayout.this.shutterButton.getMeasuredHeight() / 2), measuredWidth + (ChatAttachAlertPhotoLayout.this.shutterButton.getMeasuredWidth() / 2), measuredHeight + (ChatAttachAlertPhotoLayout.this.shutterButton.getMeasuredHeight() / 2));
                ChatAttachAlertPhotoLayout.this.switchCameraButton.layout(m107dp3 - (ChatAttachAlertPhotoLayout.this.switchCameraButton.getMeasuredWidth() / 2), i6 - (ChatAttachAlertPhotoLayout.this.switchCameraButton.getMeasuredHeight() / 2), m107dp3 + (ChatAttachAlertPhotoLayout.this.switchCameraButton.getMeasuredWidth() / 2), i6 + (ChatAttachAlertPhotoLayout.this.switchCameraButton.getMeasuredHeight() / 2));
                for (int i9 = 0; i9 < 2; i9++) {
                    ChatAttachAlertPhotoLayout.this.flashModeButton[i9].layout(m107dp2 - (ChatAttachAlertPhotoLayout.this.flashModeButton[i9].getMeasuredWidth() / 2), measuredHeight2 - (ChatAttachAlertPhotoLayout.this.flashModeButton[i9].getMeasuredHeight() / 2), (ChatAttachAlertPhotoLayout.this.flashModeButton[i9].getMeasuredWidth() / 2) + m107dp2, (ChatAttachAlertPhotoLayout.this.flashModeButton[i9].getMeasuredHeight() / 2) + measuredHeight2);
                }
            }
        };
        this.cameraPanel = frameLayout;
        frameLayout.setVisibility(8);
        this.cameraPanel.setAlpha(BitmapDescriptorFactory.HUE_RED);
        container.addView(this.cameraPanel, LayoutHelper.createFrame(-1, 126, 83));
        TextView textView4 = new TextView(context);
        this.counterTextView = textView4;
        textView4.setBackgroundResource(C3632R.C3634drawable.photos_rounded);
        this.counterTextView.setVisibility(8);
        this.counterTextView.setTextColor(-1);
        this.counterTextView.setGravity(17);
        this.counterTextView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.counterTextView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        this.counterTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.counterTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, C3632R.C3634drawable.photos_arrow, 0);
        this.counterTextView.setCompoundDrawablePadding(AndroidUtilities.m107dp(4));
        this.counterTextView.setPadding(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(16), 0);
        container.addView(this.counterTextView, LayoutHelper.createFrame(-2, 38, 51, 0, 0, 0, 116));
        this.counterTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatAttachAlertPhotoLayout.this.lambda$new$5(view);
            }
        });
        ZoomControlView zoomControlView = new ZoomControlView(context);
        this.zoomControlView = zoomControlView;
        zoomControlView.setVisibility(8);
        this.zoomControlView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        container.addView(this.zoomControlView, LayoutHelper.createFrame(-2, 50, 51, 0, 0, 0, 116));
        this.zoomControlView.setDelegate(new ZoomControlView.ZoomControlViewDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda25
            @Override // org.telegram.p043ui.Components.ZoomControlView.ZoomControlViewDelegate
            public final void didSetZoom(float f) {
                ChatAttachAlertPhotoLayout.this.lambda$new$6(f);
            }
        });
        ShutterButton shutterButton = new ShutterButton(context);
        this.shutterButton = shutterButton;
        this.cameraPanel.addView(shutterButton, LayoutHelper.createFrame(84, 84, 17));
        this.shutterButton.setDelegate(new C481010(resourcesProvider, container));
        this.shutterButton.setFocusable(true);
        this.shutterButton.setContentDescription(LocaleController.getString("AccDescrShutter", C3632R.string.AccDescrShutter));
        ImageView imageView = new ImageView(context);
        this.switchCameraButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.cameraPanel.addView(this.switchCameraButton, LayoutHelper.createFrame(48, 48, 21));
        this.switchCameraButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatAttachAlertPhotoLayout.this.lambda$new$7(view);
            }
        });
        this.switchCameraButton.setContentDescription(LocaleController.getString("AccDescrSwitchCamera", C3632R.string.AccDescrSwitchCamera));
        for (int i2 = 0; i2 < 2; i2++) {
            this.flashModeButton[i2] = new ImageView(context);
            this.flashModeButton[i2].setScaleType(ImageView.ScaleType.CENTER);
            this.flashModeButton[i2].setVisibility(4);
            this.cameraPanel.addView(this.flashModeButton[i2], LayoutHelper.createFrame(48, 48, 51));
            this.flashModeButton[i2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatAttachAlertPhotoLayout.this.lambda$new$8(view);
                }
            });
            this.flashModeButton[i2].setContentDescription("flash mode " + i2);
        }
        TextView textView5 = new TextView(context);
        this.tooltipTextView = textView5;
        textView5.setTextSize(1, 15.0f);
        this.tooltipTextView.setTextColor(-1);
        this.tooltipTextView.setText(LocaleController.getString("TapForVideo", C3632R.string.TapForVideo));
        this.tooltipTextView.setShadowLayer(AndroidUtilities.m108dp(3.33333f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m108dp(0.666f), 1275068416);
        this.tooltipTextView.setPadding(AndroidUtilities.m107dp(6), 0, AndroidUtilities.m107dp(6), 0);
        this.cameraPanel.addView(this.tooltipTextView, LayoutHelper.createFrame(-2, -2, 81, 0, 0, 0, 16));
        RecyclerListView recyclerListView3 = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.13
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerViewIgnoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.cameraPhotoRecyclerView = recyclerListView3;
        recyclerListView3.setVerticalScrollBarEnabled(true);
        RecyclerListView recyclerListView4 = this.cameraPhotoRecyclerView;
        PhotoAttachAdapter photoAttachAdapter2 = new PhotoAttachAdapter(context, false);
        this.cameraAttachAdapter = photoAttachAdapter2;
        recyclerListView4.setAdapter(photoAttachAdapter2);
        this.cameraAttachAdapter.createCache();
        this.cameraPhotoRecyclerView.setClipToPadding(false);
        this.cameraPhotoRecyclerView.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
        this.cameraPhotoRecyclerView.setItemAnimator(null);
        this.cameraPhotoRecyclerView.setLayoutAnimation(null);
        this.cameraPhotoRecyclerView.setOverScrollMode(2);
        this.cameraPhotoRecyclerView.setVisibility(4);
        this.cameraPhotoRecyclerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        container.addView(this.cameraPhotoRecyclerView, LayoutHelper.createFrame(-1, 80));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this, context, 0, false) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.14
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        };
        this.cameraPhotoLayoutManager = linearLayoutManager;
        this.cameraPhotoRecyclerView.setLayoutManager(linearLayoutManager);
        this.cameraPhotoRecyclerView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda22
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                ChatAttachAlertPhotoLayout.lambda$new$9(view, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        this.dropDownContainer.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$new$3(boolean r9, org.telegram.p043ui.ActionBar.Theme.ResourcesProvider r10, android.view.View r11, int r12, float r13, float r14) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.lambda$new$3(boolean, org.telegram.ui.ActionBar.Theme$ResourcesProvider, android.view.View, int, float, float):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i, BaseFragment baseFragment, ArrayList arrayList, int i2, ChatActivity chatActivity) {
        if (this.parentAlert.isPhotoPicker) {
            PhotoViewer.getInstance().setParentActivity(baseFragment);
            PhotoViewer.getInstance().setMaxSelectedPhotos(0, false);
            i = 3;
        }
        PhotoViewer.getInstance().openPhotoForSelect(arrayList, i2, i, false, this.photoViewerProvider, chatActivity);
        PhotoViewer.getInstance().setAvatarFor(this.parentAlert.getAvatarFor());
        if (this.parentAlert.isPhotoPicker) {
            PhotoViewer.getInstance().closePhotoAfterSelect = false;
        }
        if (captionForAllMedia()) {
            PhotoViewer.getInstance().setCaption(this.parentAlert.getCommentTextView().getText());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$4(View view, int i) {
        if (i == 0 && this.selectedAlbumEntry == this.galleryAlbumEntry) {
            ChatAttachAlert.ChatAttachViewDelegate chatAttachViewDelegate = this.parentAlert.delegate;
            if (chatAttachViewDelegate != null) {
                chatAttachViewDelegate.didPressedButton(0, false, true, 0, false, null, false);
            }
            return true;
        } else if (view instanceof PhotoAttachPhotoCell) {
            RecyclerViewItemRangeSelector recyclerViewItemRangeSelector = this.itemRangeSelector;
            boolean z = !((PhotoAttachPhotoCell) view).isChecked();
            this.shouldSelect = z;
            recyclerViewItemRangeSelector.setIsActive(view, true, i, z);
            return false;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        if (this.cameraView == null) {
            return;
        }
        openPhotoViewer(null, false, false);
        CameraController.getInstance().stopPreview(this.cameraView.getCameraSession());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(float f) {
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            this.cameraZoom = f;
            cameraView.setZoom(f);
        }
        showZoomControls(true, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10 */
    /* loaded from: classes6.dex */
    public class C481010 implements ShutterButton.ShutterButtonDelegate {
        private File outputFile;
        final /* synthetic */ FrameLayout val$container;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;
        private boolean zoomingWas;

        C481010(Theme.ResourcesProvider resourcesProvider, FrameLayout frameLayout) {
            this.val$resourcesProvider = resourcesProvider;
            this.val$container = frameLayout;
        }

        @Override // org.telegram.p043ui.Components.ShutterButton.ShutterButtonDelegate
        public boolean shutterLongPressed() {
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            ChatAttachAlert chatAttachAlert = chatAttachAlertPhotoLayout.parentAlert;
            if ((chatAttachAlert.avatarPicker == 2 || (chatAttachAlert.baseFragment instanceof ChatActivity)) && !chatAttachAlertPhotoLayout.takingPhoto) {
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                ChatAttachAlert chatAttachAlert2 = chatAttachAlertPhotoLayout2.parentAlert;
                if (!chatAttachAlert2.destroyed && chatAttachAlertPhotoLayout2.cameraView != null) {
                    BaseFragment baseFragment = chatAttachAlert2.baseFragment;
                    if (baseFragment == null) {
                        baseFragment = LaunchActivity.getLastFragment();
                    }
                    if (baseFragment != null && baseFragment.getParentActivity() != null) {
                        if (!ChatAttachAlertPhotoLayout.this.videoEnabled) {
                            BulletinFactory.m66of(ChatAttachAlertPhotoLayout.this.cameraView, this.val$resourcesProvider).createErrorBulletin(LocaleController.getString(C3632R.string.GlobalAttachVideoRestricted)).show();
                            return false;
                        } else if (Build.VERSION.SDK_INT < 23 || ChatAttachAlertPhotoLayout.this.getContext().checkSelfPermission("android.permission.RECORD_AUDIO") == 0) {
                            for (int i = 0; i < 2; i++) {
                                ChatAttachAlertPhotoLayout.this.flashModeButton[i].animate().alpha(BitmapDescriptorFactory.HUE_RED).translationX(AndroidUtilities.m107dp(30)).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                            }
                            ViewPropertyAnimator duration = ChatAttachAlertPhotoLayout.this.switchCameraButton.animate().alpha(BitmapDescriptorFactory.HUE_RED).translationX(-AndroidUtilities.m107dp(30)).setDuration(150L);
                            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                            duration.setInterpolator(cubicBezierInterpolator).start();
                            ChatAttachAlertPhotoLayout.this.tooltipTextView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
                            BaseFragment baseFragment2 = ChatAttachAlertPhotoLayout.this.parentAlert.baseFragment;
                            this.outputFile = AndroidUtilities.generateVideoPath((baseFragment2 instanceof ChatActivity) && ((ChatActivity) baseFragment2).isSecretChat());
                            AndroidUtilities.updateViewVisibilityAnimated(ChatAttachAlertPhotoLayout.this.recordTime, true);
                            ChatAttachAlertPhotoLayout.this.recordTime.setText(AndroidUtilities.formatLongDuration(0));
                            ChatAttachAlertPhotoLayout.this.videoRecordTime = 0;
                            ChatAttachAlertPhotoLayout.this.videoRecordRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ChatAttachAlertPhotoLayout.C481010.this.lambda$shutterLongPressed$0();
                                }
                            };
                            AndroidUtilities.lockOrientation(baseFragment.getParentActivity());
                            CameraController.getInstance().recordVideo(ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession(), this.outputFile, ChatAttachAlertPhotoLayout.this.parentAlert.avatarPicker != 0, new CameraController.VideoTakeCallback() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda3
                                @Override // org.telegram.messenger.camera.CameraController.VideoTakeCallback
                                public final void onFinishVideoRecording(String str, long j) {
                                    ChatAttachAlertPhotoLayout.C481010.this.lambda$shutterLongPressed$1(str, j);
                                }
                            }, new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ChatAttachAlertPhotoLayout.C481010.this.lambda$shutterLongPressed$2();
                                }
                            }, ChatAttachAlertPhotoLayout.this.cameraView);
                            ChatAttachAlertPhotoLayout.this.shutterButton.setState(ShutterButton.State.RECORDING, true);
                            ChatAttachAlertPhotoLayout.this.cameraView.runHaptic();
                            return true;
                        } else {
                            ChatAttachAlertPhotoLayout.this.requestingPermissions = true;
                            baseFragment.getParentActivity().requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, 21);
                            return false;
                        }
                    }
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shutterLongPressed$0() {
            if (ChatAttachAlertPhotoLayout.this.videoRecordRunnable == null) {
                return;
            }
            ChatAttachAlertPhotoLayout.access$2908(ChatAttachAlertPhotoLayout.this);
            ChatAttachAlertPhotoLayout.this.recordTime.setText(AndroidUtilities.formatLongDuration(ChatAttachAlertPhotoLayout.this.videoRecordTime));
            AndroidUtilities.runOnUIThread(ChatAttachAlertPhotoLayout.this.videoRecordRunnable, 1000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shutterLongPressed$1(String str, long j) {
            int i;
            int i2;
            MediaController.PhotoEntry photoEntry;
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout;
            if (this.outputFile != null) {
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                if (chatAttachAlertPhotoLayout2.parentAlert.destroyed || chatAttachAlertPhotoLayout2.cameraView == null) {
                    return;
                }
                boolean unused = ChatAttachAlertPhotoLayout.mediaFromExternalCamera = false;
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(new File(str).getAbsolutePath(), options);
                    i = options.outWidth;
                    try {
                        i2 = options.outHeight;
                    } catch (Exception unused2) {
                        i2 = 0;
                        int i3 = ChatAttachAlertPhotoLayout.lastImageId;
                        ChatAttachAlertPhotoLayout.lastImageId = i3 - 1;
                        photoEntry = new MediaController.PhotoEntry(0, i3, 0L, this.outputFile.getAbsolutePath(), 0, true, i, i2, 0L);
                        photoEntry.duration = (int) (((float) j) / 1000.0f);
                        photoEntry.thumbPath = str;
                        chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                        if (chatAttachAlertPhotoLayout.parentAlert.avatarPicker != 0) {
                            MediaController.CropState cropState = new MediaController.CropState();
                            photoEntry.cropState = cropState;
                            cropState.mirrored = true;
                            cropState.freeform = false;
                            cropState.lockedAspectRatio = 1.0f;
                        }
                        ChatAttachAlertPhotoLayout.this.openPhotoViewer(photoEntry, false, false);
                    }
                } catch (Exception unused3) {
                    i = 0;
                }
                int i32 = ChatAttachAlertPhotoLayout.lastImageId;
                ChatAttachAlertPhotoLayout.lastImageId = i32 - 1;
                photoEntry = new MediaController.PhotoEntry(0, i32, 0L, this.outputFile.getAbsolutePath(), 0, true, i, i2, 0L);
                photoEntry.duration = (int) (((float) j) / 1000.0f);
                photoEntry.thumbPath = str;
                chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                if (chatAttachAlertPhotoLayout.parentAlert.avatarPicker != 0 && chatAttachAlertPhotoLayout.cameraView.isFrontface()) {
                    MediaController.CropState cropState2 = new MediaController.CropState();
                    photoEntry.cropState = cropState2;
                    cropState2.mirrored = true;
                    cropState2.freeform = false;
                    cropState2.lockedAspectRatio = 1.0f;
                }
                ChatAttachAlertPhotoLayout.this.openPhotoViewer(photoEntry, false, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shutterLongPressed$2() {
            AndroidUtilities.runOnUIThread(ChatAttachAlertPhotoLayout.this.videoRecordRunnable, 1000L);
        }

        @Override // org.telegram.p043ui.Components.ShutterButton.ShutterButtonDelegate
        public void shutterCancel() {
            File file = this.outputFile;
            if (file != null) {
                file.delete();
                this.outputFile = null;
            }
            ChatAttachAlertPhotoLayout.this.resetRecordState();
            CameraController.getInstance().stopVideoRecording(ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession(), true);
        }

        @Override // org.telegram.p043ui.Components.ShutterButton.ShutterButtonDelegate
        public void shutterReleased() {
            CameraView cameraView;
            if (ChatAttachAlertPhotoLayout.this.takingPhoto || (cameraView = ChatAttachAlertPhotoLayout.this.cameraView) == null || cameraView.getCameraSession() == null) {
                return;
            }
            if (ChatAttachAlertPhotoLayout.this.shutterButton.getState() == ShutterButton.State.RECORDING) {
                ChatAttachAlertPhotoLayout.this.resetRecordState();
                CameraController.getInstance().stopVideoRecording(ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession(), false);
                ChatAttachAlertPhotoLayout.this.shutterButton.setState(ShutterButton.State.DEFAULT, true);
            } else if (!ChatAttachAlertPhotoLayout.this.photoEnabled) {
                BulletinFactory.m66of(ChatAttachAlertPhotoLayout.this.cameraView, this.val$resourcesProvider).createErrorBulletin(LocaleController.getString(C3632R.string.GlobalAttachPhotoRestricted)).show();
            } else {
                BaseFragment baseFragment = ChatAttachAlertPhotoLayout.this.parentAlert.baseFragment;
                final File generatePicturePath = AndroidUtilities.generatePicturePath((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).isSecretChat(), null);
                final boolean isSameTakePictureOrientation = ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession().isSameTakePictureOrientation();
                CameraSession cameraSession = ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession();
                ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
                cameraSession.setFlipFront((chatAttachAlert.baseFragment instanceof ChatActivity) || chatAttachAlert.avatarPicker == 2);
                ChatAttachAlertPhotoLayout.this.takingPhoto = CameraController.getInstance().takePicture(generatePicturePath, false, ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        ChatAttachAlertPhotoLayout.C481010.this.lambda$shutterReleased$3(generatePicturePath, isSameTakePictureOrientation, (Integer) obj);
                    }
                });
                ChatAttachAlertPhotoLayout.this.cameraView.startTakePictureAnimation(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$shutterReleased$3(java.io.File r18, boolean r19, java.lang.Integer r20) {
            /*
                r17 = this;
                r0 = r17
                org.telegram.ui.Components.ChatAttachAlertPhotoLayout r1 = org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.this
                r2 = 0
                org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.access$2502(r1, r2)
                if (r18 == 0) goto L64
                org.telegram.ui.Components.ChatAttachAlertPhotoLayout r1 = org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.this
                org.telegram.ui.Components.ChatAttachAlert r1 = r1.parentAlert
                boolean r1 = r1.destroyed
                if (r1 == 0) goto L13
                goto L64
            L13:
                org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.access$3502(r2)
                r1 = 1
                android.graphics.BitmapFactory$Options r3 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Exception -> L34
                r3.<init>()     // Catch: java.lang.Exception -> L34
                r3.inJustDecodeBounds = r1     // Catch: java.lang.Exception -> L34
                java.io.File r4 = new java.io.File     // Catch: java.lang.Exception -> L34
                java.lang.String r5 = r18.getAbsolutePath()     // Catch: java.lang.Exception -> L34
                r4.<init>(r5)     // Catch: java.lang.Exception -> L34
                java.lang.String r4 = r4.getAbsolutePath()     // Catch: java.lang.Exception -> L34
                android.graphics.BitmapFactory.decodeFile(r4, r3)     // Catch: java.lang.Exception -> L34
                int r4 = r3.outWidth     // Catch: java.lang.Exception -> L34
                int r3 = r3.outHeight     // Catch: java.lang.Exception -> L35
                r14 = r3
                goto L36
            L34:
                r4 = r2
            L35:
                r14 = r2
            L36:
                r13 = r4
                org.telegram.messenger.MediaController$PhotoEntry r3 = new org.telegram.messenger.MediaController$PhotoEntry
                r6 = 0
                int r7 = org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.lastImageId
                int r4 = r7 + (-1)
                org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.lastImageId = r4
                r8 = 0
                java.lang.String r10 = r18.getAbsolutePath()
                int r4 = r20.intValue()
                r5 = -1
                if (r4 != r5) goto L4f
                r11 = r2
                goto L54
            L4f:
                int r4 = r20.intValue()
                r11 = r4
            L54:
                r12 = 0
                r15 = 0
                r5 = r3
                r5.<init>(r6, r7, r8, r10, r11, r12, r13, r14, r15)
                r3.canDeleteAfter = r1
                org.telegram.ui.Components.ChatAttachAlertPhotoLayout r1 = org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.this
                r4 = r19
                r1.openPhotoViewer(r3, r4, r2)
            L64:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.C481010.lambda$shutterReleased$3(java.io.File, boolean, java.lang.Integer):void");
        }

        @Override // org.telegram.p043ui.Components.ShutterButton.ShutterButtonDelegate
        public boolean onTranslationChanged(float f, float f2) {
            boolean z = this.val$container.getWidth() < this.val$container.getHeight();
            float f3 = z ? f : f2;
            float f4 = z ? f2 : f;
            if (!this.zoomingWas && Math.abs(f3) > Math.abs(f4)) {
                return ChatAttachAlertPhotoLayout.this.zoomControlView.getTag() == null;
            } else if (f4 < BitmapDescriptorFactory.HUE_RED) {
                ChatAttachAlertPhotoLayout.this.showZoomControls(true, true);
                ChatAttachAlertPhotoLayout.this.zoomControlView.setZoom((-f4) / AndroidUtilities.m107dp(200), true);
                this.zoomingWas = true;
                return false;
            } else {
                if (this.zoomingWas) {
                    ChatAttachAlertPhotoLayout.this.zoomControlView.setZoom(BitmapDescriptorFactory.HUE_RED, true);
                }
                int i = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
                if (i == 0 && f2 == BitmapDescriptorFactory.HUE_RED) {
                    this.zoomingWas = false;
                }
                if (this.zoomingWas) {
                    return false;
                }
                return (i == 0 && f2 == BitmapDescriptorFactory.HUE_RED) ? false : true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(View view) {
        CameraView cameraView;
        if (this.takingPhoto || (cameraView = this.cameraView) == null || !cameraView.isInited()) {
            return;
        }
        this.canSaveCameraPreview = false;
        this.cameraView.switchCamera();
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.switchCameraButton, View.SCALE_X, BitmapDescriptorFactory.HUE_RED).setDuration(100L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ImageView imageView = ChatAttachAlertPhotoLayout.this.switchCameraButton;
                CameraView cameraView2 = ChatAttachAlertPhotoLayout.this.cameraView;
                imageView.setImageResource((cameraView2 == null || !cameraView2.isFrontface()) ? C3632R.C3634drawable.camera_revert2 : C3632R.C3634drawable.camera_revert1);
                ObjectAnimator.ofFloat(ChatAttachAlertPhotoLayout.this.switchCameraButton, View.SCALE_X, 1.0f).setDuration(100L).start();
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(final View view) {
        CameraView cameraView;
        if (this.flashAnimationInProgress || (cameraView = this.cameraView) == null || !cameraView.isInited() || !this.cameraOpened) {
            return;
        }
        String currentFlashMode = this.cameraView.getCameraSession().getCurrentFlashMode();
        String nextFlashMode = this.cameraView.getCameraSession().getNextFlashMode();
        if (currentFlashMode.equals(nextFlashMode)) {
            return;
        }
        this.cameraView.getCameraSession().setCurrentFlashMode(nextFlashMode);
        this.flashAnimationInProgress = true;
        ImageView[] imageViewArr = this.flashModeButton;
        final ImageView imageView = imageViewArr[0] == view ? imageViewArr[1] : imageViewArr[0];
        imageView.setVisibility(0);
        setCameraFlashModeIcon(imageView, nextFlashMode);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(48)), ObjectAnimator.ofFloat(imageView, View.TRANSLATION_Y, -AndroidUtilities.m107dp(48), BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(view, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(imageView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
        animatorSet.setDuration(220L);
        animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatAttachAlertPhotoLayout.this.flashAnimationInProgress = false;
                view.setVisibility(4);
                imageView.sendAccessibilityEvent(8);
            }
        });
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$9(View view, int i) {
        if (view instanceof PhotoAttachPhotoCell) {
            ((PhotoAttachPhotoCell) view).callDelegate();
        }
    }

    public void showAvatarConstructorFragment(AvatarConstructorPreviewCell avatarConstructorPreviewCell, TLRPC$VideoSize tLRPC$VideoSize) {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        final AvatarConstructorFragment avatarConstructorFragment = new AvatarConstructorFragment(chatAttachAlert.parentImageUpdater, chatAttachAlert.getAvatarFor());
        avatarConstructorFragment.finishOnDone = this.parentAlert.getAvatarFor() == null || this.parentAlert.getAvatarFor().type != 2;
        this.parentAlert.baseFragment.presentFragment(avatarConstructorFragment);
        if (avatarConstructorPreviewCell != null) {
            avatarConstructorFragment.startFrom(avatarConstructorPreviewCell);
        }
        if (tLRPC$VideoSize != null) {
            avatarConstructorFragment.startFrom(tLRPC$VideoSize);
        }
        avatarConstructorFragment.setDelegate(new AvatarConstructorFragment.Delegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda21
            @Override // org.telegram.p043ui.Components.AvatarConstructorFragment.Delegate
            public final void onDone(AvatarConstructorFragment.BackgroundGradient backgroundGradient, long j, TLRPC$Document tLRPC$Document, AvatarConstructorFragment.PreviewView previewView) {
                ChatAttachAlertPhotoLayout.this.lambda$showAvatarConstructorFragment$10(avatarConstructorFragment, backgroundGradient, j, tLRPC$Document, previewView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAvatarConstructorFragment$10(AvatarConstructorFragment avatarConstructorFragment, AvatarConstructorFragment.BackgroundGradient backgroundGradient, long j, TLRPC$Document tLRPC$Document, AvatarConstructorFragment.PreviewView previewView) {
        MediaController.PhotoEntry photoEntry;
        selectedPhotos.clear();
        Bitmap createBitmap = Bitmap.createBitmap(800, 800, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        GradientTools gradientTools = new GradientTools();
        if (backgroundGradient != null) {
            gradientTools.setColors(backgroundGradient.color1, backgroundGradient.color2, backgroundGradient.color3, backgroundGradient.color4);
        } else {
            int[][] iArr = AvatarConstructorFragment.defaultColors;
            gradientTools.setColors(iArr[0][0], iArr[0][1], iArr[0][2], iArr[0][3]);
        }
        gradientTools.setBounds(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 800.0f, 800.0f);
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 800.0f, 800.0f, gradientTools.paint);
        File file = new File(FileLoader.getDirectory(4), SharedConfig.getLastLocalId() + "avatar_background.png");
        try {
            file.createNewFile();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            createBitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(byteArray);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        int i = (int) 120.00001f;
        int i2 = (int) 560.0f;
        ImageReceiver imageReceiver = previewView.getImageReceiver();
        if (imageReceiver.getAnimation() != null) {
            Bitmap firstFrame = imageReceiver.getAnimation().getFirstFrame(null);
            ImageReceiver imageReceiver2 = new ImageReceiver();
            imageReceiver2.setImageBitmap(firstFrame);
            float f = i;
            float f2 = i2;
            imageReceiver2.setImageCoords(f, f, f2, f2);
            imageReceiver2.setRoundRadius((int) (f2 * 0.13f));
            imageReceiver2.draw(canvas);
            imageReceiver2.clearImage();
            firstFrame.recycle();
        } else {
            if (imageReceiver.getLottieAnimation() != null) {
                imageReceiver.getLottieAnimation().setCurrentFrame(0, false, true);
            }
            float f3 = i;
            float f4 = i2;
            imageReceiver.setImageCoords(f3, f3, f4, f4);
            imageReceiver.setRoundRadius((int) (f4 * 0.13f));
            imageReceiver.draw(canvas);
        }
        File file2 = new File(FileLoader.getDirectory(4), SharedConfig.getLastLocalId() + "avatar_background.png");
        try {
            file2.createNewFile();
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            createBitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream2);
            byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
            FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
            fileOutputStream2.write(byteArray2);
            fileOutputStream2.flush();
            fileOutputStream2.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        if (previewView.hasAnimation()) {
            photoEntry = new MediaController.PhotoEntry(0, 0, 0L, file.getPath(), 0, false, 0, 0, 0L);
            photoEntry.thumbPath = file2.getPath();
            if (previewView.backgroundGradient != null) {
                if (previewView.documentId != 0) {
                    TLRPC$TL_videoSizeEmojiMarkup tLRPC$TL_videoSizeEmojiMarkup = new TLRPC$TL_videoSizeEmojiMarkup();
                    tLRPC$TL_videoSizeEmojiMarkup.emoji_id = previewView.documentId;
                    tLRPC$TL_videoSizeEmojiMarkup.background_colors.add(Integer.valueOf(previewView.backgroundGradient.color1));
                    int i3 = previewView.backgroundGradient.color2;
                    if (i3 != 0) {
                        tLRPC$TL_videoSizeEmojiMarkup.background_colors.add(Integer.valueOf(i3));
                    }
                    int i4 = previewView.backgroundGradient.color3;
                    if (i4 != 0) {
                        tLRPC$TL_videoSizeEmojiMarkup.background_colors.add(Integer.valueOf(i4));
                    }
                    int i5 = previewView.backgroundGradient.color4;
                    if (i5 != 0) {
                        tLRPC$TL_videoSizeEmojiMarkup.background_colors.add(Integer.valueOf(i5));
                    }
                    photoEntry.emojiMarkup = tLRPC$TL_videoSizeEmojiMarkup;
                } else if (previewView.document != null) {
                    TLRPC$TL_videoSizeStickerMarkup tLRPC$TL_videoSizeStickerMarkup = new TLRPC$TL_videoSizeStickerMarkup();
                    TLRPC$Document tLRPC$Document2 = previewView.document;
                    tLRPC$TL_videoSizeStickerMarkup.sticker_id = tLRPC$Document2.f1610id;
                    tLRPC$TL_videoSizeStickerMarkup.stickerset = MessageObject.getInputStickerSet(tLRPC$Document2);
                    tLRPC$TL_videoSizeStickerMarkup.background_colors.add(Integer.valueOf(previewView.backgroundGradient.color1));
                    int i6 = previewView.backgroundGradient.color2;
                    if (i6 != 0) {
                        tLRPC$TL_videoSizeStickerMarkup.background_colors.add(Integer.valueOf(i6));
                    }
                    int i7 = previewView.backgroundGradient.color3;
                    if (i7 != 0) {
                        tLRPC$TL_videoSizeStickerMarkup.background_colors.add(Integer.valueOf(i7));
                    }
                    int i8 = previewView.backgroundGradient.color4;
                    if (i8 != 0) {
                        tLRPC$TL_videoSizeStickerMarkup.background_colors.add(Integer.valueOf(i8));
                    }
                    photoEntry.emojiMarkup = tLRPC$TL_videoSizeStickerMarkup;
                }
            }
            VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
            photoEntry.editedInfo = videoEditedInfo;
            videoEditedInfo.originalPath = file.getPath();
            VideoEditedInfo videoEditedInfo2 = photoEntry.editedInfo;
            videoEditedInfo2.resultWidth = 800;
            videoEditedInfo2.resultHeight = 800;
            videoEditedInfo2.originalWidth = 800;
            videoEditedInfo2.originalHeight = 800;
            videoEditedInfo2.isPhoto = true;
            videoEditedInfo2.bitrate = -1;
            videoEditedInfo2.muted = true;
            videoEditedInfo2.startTime = 0L;
            videoEditedInfo2.start = (float) 0;
            videoEditedInfo2.endTime = previewView.getDuration();
            VideoEditedInfo videoEditedInfo3 = photoEntry.editedInfo;
            videoEditedInfo3.framerate = 30;
            videoEditedInfo3.avatarStartTime = 0L;
            long j2 = videoEditedInfo3.endTime;
            videoEditedInfo3.estimatedSize = (int) ((((float) j2) / 1000.0f) * 115200.0f);
            videoEditedInfo3.estimatedDuration = j2;
            VideoEditedInfo.MediaEntity mediaEntity = new VideoEditedInfo.MediaEntity();
            mediaEntity.type = (byte) 0;
            TLRPC$Document findDocument = tLRPC$Document == null ? AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, j) : tLRPC$Document;
            if (findDocument == null) {
                return;
            }
            mediaEntity.viewWidth = i2;
            mediaEntity.viewHeight = i2;
            mediaEntity.width = 0.7f;
            mediaEntity.height = 0.7f;
            mediaEntity.f1579x = 0.15f;
            mediaEntity.f1580y = 0.15f;
            mediaEntity.document = findDocument;
            mediaEntity.parentObject = null;
            mediaEntity.text = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(findDocument, true).getAbsolutePath();
            mediaEntity.roundRadius = 0.13f;
            if (MessageObject.isAnimatedStickerDocument(findDocument, true) || MessageObject.isVideoStickerDocument(findDocument)) {
                mediaEntity.subType = (byte) (mediaEntity.subType | (MessageObject.isAnimatedStickerDocument(findDocument, true) ? (byte) 1 : (byte) 4));
            }
            if (MessageObject.isTextColorEmoji(findDocument)) {
                mediaEntity.color = -1;
                mediaEntity.subType = (byte) (mediaEntity.subType | 8);
            }
            photoEntry.editedInfo.mediaEntities = new ArrayList<>();
            photoEntry.editedInfo.mediaEntities.add(mediaEntity);
        } else {
            photoEntry = new MediaController.PhotoEntry(0, 0, 0L, file2.getPath(), 0, false, 0, 0, 0L);
        }
        selectedPhotos.put(-1, photoEntry);
        selectedPhotosOrder.add(-1);
        this.parentAlert.delegate.didPressedButton(7, true, false, 0, false, null, false);
        if (avatarConstructorFragment.finishOnDone) {
            return;
        }
        BaseFragment baseFragment = this.parentAlert.baseFragment;
        if (baseFragment != null) {
            baseFragment.removeSelfFromStack();
        }
        avatarConstructorFragment.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkSendMediaEnabled(MediaController.PhotoEntry photoEntry) {
        if (!this.videoEnabled && photoEntry.isVideo) {
            BulletinFactory.m66of(this.parentAlert.sizeNotifierFrameLayout, this.resourcesProvider).createErrorBulletin(LocaleController.getString("GlobalAttachVideoRestricted", C3632R.string.GlobalAttachVideoRestricted)).show();
            return true;
        } else if (this.photoEnabled || photoEntry.isVideo) {
            return false;
        } else {
            BulletinFactory.m66of(this.parentAlert.sizeNotifierFrameLayout, this.resourcesProvider).createErrorBulletin(LocaleController.getString("GlobalAttachPhotoRestricted", C3632R.string.GlobalAttachPhotoRestricted)).show();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int addToSelectedPhotos(MediaController.PhotoEntry photoEntry, int i) {
        Integer valueOf = Integer.valueOf(photoEntry.imageId);
        if (selectedPhotos.containsKey(valueOf)) {
            selectedPhotos.remove(valueOf);
            int indexOf = selectedPhotosOrder.indexOf(valueOf);
            if (indexOf >= 0) {
                selectedPhotosOrder.remove(indexOf);
            }
            updatePhotosCounter(false);
            updateCheckedPhotoIndices();
            if (i >= 0) {
                photoEntry.reset();
                this.photoViewerProvider.updatePhotoAtIndex(i);
            }
            return indexOf;
        }
        selectedPhotos.put(valueOf, photoEntry);
        selectedPhotosOrder.add(valueOf);
        updatePhotosCounter(true);
        return -1;
    }

    private void clearSelectedPhotos() {
        this.spoilerItem.setText(LocaleController.getString(C3632R.string.EnablePhotoSpoiler));
        this.spoilerItem.setAnimatedIcon(C3632R.raw.photo_spoiler);
        this.parentAlert.selectedMenuItem.showSubItem(1);
        if (!selectedPhotos.isEmpty()) {
            for (Map.Entry<Object, Object> entry : selectedPhotos.entrySet()) {
                ((MediaController.PhotoEntry) entry.getValue()).reset();
            }
            selectedPhotos.clear();
            selectedPhotosOrder.clear();
        }
        if (!cameraPhotos.isEmpty()) {
            int size = cameraPhotos.size();
            for (int i = 0; i < size; i++) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) cameraPhotos.get(i);
                new File(photoEntry.path).delete();
                if (photoEntry.imagePath != null) {
                    new File(photoEntry.imagePath).delete();
                }
                if (photoEntry.thumbPath != null) {
                    new File(photoEntry.thumbPath).delete();
                }
            }
            cameraPhotos.clear();
        }
        this.adapter.notifyDataSetChanged();
        this.cameraAttachAdapter.notifyDataSetChanged();
    }

    private void updateAlbumsDropDown() {
        final ArrayList<MediaController.AlbumEntry> arrayList;
        this.dropDownContainer.removeAllSubItems();
        if (this.mediaEnabled) {
            if (shouldLoadAllMedia()) {
                arrayList = MediaController.allMediaAlbums;
            } else {
                arrayList = MediaController.allPhotoAlbums;
            }
            ArrayList<MediaController.AlbumEntry> arrayList2 = new ArrayList<>(arrayList);
            this.dropDownAlbums = arrayList2;
            Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda18
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$updateAlbumsDropDown$11;
                    lambda$updateAlbumsDropDown$11 = ChatAttachAlertPhotoLayout.lambda$updateAlbumsDropDown$11(arrayList, (MediaController.AlbumEntry) obj, (MediaController.AlbumEntry) obj2);
                    return lambda$updateAlbumsDropDown$11;
                }
            });
        } else {
            this.dropDownAlbums = new ArrayList<>();
        }
        if (this.dropDownAlbums.isEmpty()) {
            this.dropDown.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        this.dropDown.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.dropDownDrawable, (Drawable) null);
        int size = this.dropDownAlbums.size();
        for (int i = 0; i < size; i++) {
            MediaController.AlbumEntry albumEntry = this.dropDownAlbums.get(i);
            AlbumButton albumButton = new AlbumButton(getContext(), albumEntry.coverPhoto, albumEntry.bucketName, albumEntry.photos.size(), this.resourcesProvider);
            this.dropDownContainer.getPopupLayout().addView(albumButton);
            final int i2 = i + 10;
            albumButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatAttachAlertPhotoLayout.this.lambda$updateAlbumsDropDown$12(i2, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateAlbumsDropDown$11(ArrayList arrayList, MediaController.AlbumEntry albumEntry, MediaController.AlbumEntry albumEntry2) {
        int indexOf;
        int indexOf2;
        int i = albumEntry.bucketId;
        if (i != 0 || albumEntry2.bucketId == 0) {
            if ((i == 0 || albumEntry2.bucketId != 0) && (indexOf = arrayList.indexOf(albumEntry)) <= (indexOf2 = arrayList.indexOf(albumEntry2))) {
                return indexOf < indexOf2 ? -1 : 0;
            }
            return 1;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAlbumsDropDown$12(int i, View view) {
        this.parentAlert.actionBar.getActionBarMenuOnItemClick().onItemClick(i);
        this.dropDownContainer.toggleSubMenu();
    }

    private boolean processTouchEvent(MotionEvent motionEvent) {
        CameraView cameraView;
        if (motionEvent == null) {
            return false;
        }
        if ((!this.pressed && motionEvent.getActionMasked() == 0) || motionEvent.getActionMasked() == 5) {
            this.zoomControlView.getHitRect(this.hitRect);
            if (this.zoomControlView.getTag() != null && this.hitRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
            if (!this.takingPhoto && !this.dragging) {
                if (motionEvent.getPointerCount() == 2) {
                    this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                    this.zooming = true;
                } else {
                    this.maybeStartDraging = true;
                    this.lastY = motionEvent.getY();
                    this.zooming = false;
                }
                this.zoomWas = false;
                this.pressed = true;
            }
        } else if (this.pressed) {
            if (motionEvent.getActionMasked() == 2) {
                if (this.zooming && motionEvent.getPointerCount() == 2 && !this.dragging) {
                    float hypot = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                    if (!this.zoomWas) {
                        if (Math.abs(hypot - this.pinchStartDistance) >= AndroidUtilities.getPixelsInCM(0.4f, false)) {
                            this.pinchStartDistance = hypot;
                            this.zoomWas = true;
                        }
                    } else if (this.cameraView != null) {
                        this.pinchStartDistance = hypot;
                        float m107dp = this.cameraZoom + ((hypot - this.pinchStartDistance) / AndroidUtilities.m107dp(100));
                        this.cameraZoom = m107dp;
                        if (m107dp < BitmapDescriptorFactory.HUE_RED) {
                            this.cameraZoom = BitmapDescriptorFactory.HUE_RED;
                        } else if (m107dp > 1.0f) {
                            this.cameraZoom = 1.0f;
                        }
                        this.zoomControlView.setZoom(this.cameraZoom, false);
                        this.parentAlert.getSheetContainer().invalidate();
                        this.cameraView.setZoom(this.cameraZoom);
                        showZoomControls(true, true);
                    }
                } else {
                    float y = motionEvent.getY();
                    float f = y - this.lastY;
                    if (this.maybeStartDraging) {
                        if (Math.abs(f) > AndroidUtilities.getPixelsInCM(0.4f, false)) {
                            this.maybeStartDraging = false;
                            this.dragging = true;
                        }
                    } else if (this.dragging && (cameraView = this.cameraView) != null) {
                        cameraView.setTranslationY(cameraView.getTranslationY() + f);
                        this.lastY = y;
                        this.zoomControlView.setTag(null);
                        Runnable runnable = this.zoomControlHideRunnable;
                        if (runnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(runnable);
                            this.zoomControlHideRunnable = null;
                        }
                        if (this.cameraPanel.getTag() == null) {
                            this.cameraPanel.setTag(1);
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(ObjectAnimator.ofFloat(this.cameraPanel, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.zoomControlView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.counterTextView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.flashModeButton[0], View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.flashModeButton[1], View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.cameraPhotoRecyclerView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                            animatorSet.setDuration(220L);
                            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                            animatorSet.start();
                        }
                    }
                }
            } else if (motionEvent.getActionMasked() == 3 || motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 6) {
                this.pressed = false;
                this.zooming = false;
                if (this.dragging) {
                    this.dragging = false;
                    CameraView cameraView2 = this.cameraView;
                    if (cameraView2 != null) {
                        if (Math.abs(cameraView2.getTranslationY()) > this.cameraView.getMeasuredHeight() / 6.0f) {
                            closeCamera(true);
                        } else {
                            AnimatorSet animatorSet2 = new AnimatorSet();
                            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.cameraView, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.cameraPanel, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.counterTextView, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.flashModeButton[0], View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.flashModeButton[1], View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.cameraPhotoRecyclerView, View.ALPHA, 1.0f));
                            animatorSet2.setDuration(250L);
                            animatorSet2.setInterpolator(this.interpolator);
                            animatorSet2.start();
                            this.cameraPanel.setTag(null);
                        }
                    }
                } else {
                    CameraView cameraView3 = this.cameraView;
                    if (cameraView3 != null && !this.zoomWas) {
                        cameraView3.getLocationOnScreen(this.viewPosition);
                        this.cameraView.focusToPoint((int) (motionEvent.getRawX() - this.viewPosition[0]), (int) (motionEvent.getRawY() - this.viewPosition[1]));
                    }
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetRecordState() {
        if (this.parentAlert.destroyed) {
            return;
        }
        for (int i = 0; i < 2; i++) {
            this.flashModeButton[i].animate().alpha(1.0f).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
        }
        ViewPropertyAnimator duration = this.switchCameraButton.animate().alpha(1.0f).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(150L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        duration.setInterpolator(cubicBezierInterpolator).start();
        this.tooltipTextView.animate().alpha(1.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
        AndroidUtilities.updateViewVisibilityAnimated(this.recordTime, false);
        AndroidUtilities.cancelRunOnUIThread(this.videoRecordRunnable);
        this.videoRecordRunnable = null;
        AndroidUtilities.unlockOrientation(AndroidUtilities.findActivity(getContext()));
    }

    protected void openPhotoViewer(MediaController.PhotoEntry photoEntry, boolean z, boolean z2) {
        int i;
        int i2;
        ArrayList<Object> allPhotosArray;
        int i3 = 0;
        if (photoEntry != null) {
            cameraPhotos.add(photoEntry);
            selectedPhotos.put(Integer.valueOf(photoEntry.imageId), photoEntry);
            selectedPhotosOrder.add(Integer.valueOf(photoEntry.imageId));
            this.parentAlert.updateCountButton(0);
            this.adapter.notifyDataSetChanged();
            this.cameraAttachAdapter.notifyDataSetChanged();
        }
        if (photoEntry != null && !z2 && cameraPhotos.size() > 1) {
            updatePhotosCounter(false);
            if (this.cameraView != null) {
                this.zoomControlView.setZoom(BitmapDescriptorFactory.HUE_RED, false);
                this.cameraZoom = BitmapDescriptorFactory.HUE_RED;
                this.cameraView.setZoom(BitmapDescriptorFactory.HUE_RED);
                CameraController.getInstance().startPreview(this.cameraView.getCameraSession());
            }
        } else if (cameraPhotos.isEmpty()) {
        } else {
            this.cancelTakingPhotos = true;
            BaseFragment baseFragment = this.parentAlert.baseFragment;
            if (baseFragment == null) {
                baseFragment = LaunchActivity.getLastFragment();
            }
            if (baseFragment == null) {
                return;
            }
            PhotoViewer.getInstance().setParentActivity(baseFragment.getParentActivity(), this.resourcesProvider);
            PhotoViewer.getInstance().setParentAlert(this.parentAlert);
            PhotoViewer photoViewer = PhotoViewer.getInstance();
            ChatAttachAlert chatAttachAlert = this.parentAlert;
            photoViewer.setMaxSelectedPhotos(chatAttachAlert.maxSelectedPhotos, chatAttachAlert.allowOrder);
            ChatAttachAlert chatAttachAlert2 = this.parentAlert;
            int i4 = chatAttachAlert2.avatarPicker;
            ChatActivity chatActivity = null;
            if (i4 != 0) {
                i2 = 1;
            } else {
                BaseFragment baseFragment2 = chatAttachAlert2.baseFragment;
                if (baseFragment2 instanceof ChatActivity) {
                    chatActivity = (ChatActivity) baseFragment2;
                    i = 2;
                } else {
                    i = 5;
                }
                i2 = i;
            }
            ChatActivity chatActivity2 = chatActivity;
            if (i4 != 0) {
                allPhotosArray = new ArrayList<>();
                allPhotosArray.add(photoEntry);
            } else {
                allPhotosArray = getAllPhotosArray();
                i3 = cameraPhotos.size() - 1;
            }
            ArrayList<Object> arrayList = allPhotosArray;
            int i5 = i3;
            if (this.parentAlert.getAvatarFor() != null && photoEntry != null) {
                this.parentAlert.getAvatarFor().isVideo = photoEntry.isVideo;
            }
            PhotoViewer.getInstance().openPhotoForSelect(arrayList, i5, i2, false, new C481515(z), chatActivity2);
            PhotoViewer.getInstance().setAvatarFor(this.parentAlert.getAvatarFor());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$15 */
    /* loaded from: classes6.dex */
    public class C481515 extends BasePhotoProvider {
        final /* synthetic */ boolean val$sameTakePictureOrientation;

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public boolean canScrollAway() {
            return false;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public ImageReceiver.BitmapHolder getThumbForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i) {
            return null;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C481515(boolean z) {
            super(ChatAttachAlertPhotoLayout.this, null);
            this.val$sameTakePictureOrientation = z;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void onOpen() {
            ChatAttachAlertPhotoLayout.this.pauseCameraPreview();
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void onClose() {
            ChatAttachAlertPhotoLayout.this.resumeCameraPreview();
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void onEditModeChanged(boolean z) {
            ChatAttachAlertPhotoLayout.this.onPhotoEditModeChanged(z);
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public boolean cancelButtonPressed() {
            if (ChatAttachAlertPhotoLayout.this.cameraOpened && ChatAttachAlertPhotoLayout.this.cameraView != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatAttachAlertPhotoLayout.C481515.this.lambda$cancelButtonPressed$0();
                    }
                }, 1000L);
                ChatAttachAlertPhotoLayout.this.zoomControlView.setZoom(BitmapDescriptorFactory.HUE_RED, false);
                ChatAttachAlertPhotoLayout.this.cameraZoom = BitmapDescriptorFactory.HUE_RED;
                ChatAttachAlertPhotoLayout.this.cameraView.setZoom(BitmapDescriptorFactory.HUE_RED);
                CameraController.getInstance().startPreview(ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession());
            }
            if (ChatAttachAlertPhotoLayout.this.cancelTakingPhotos && ChatAttachAlertPhotoLayout.cameraPhotos.size() == 1) {
                int size = ChatAttachAlertPhotoLayout.cameraPhotos.size();
                for (int i = 0; i < size; i++) {
                    MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) ChatAttachAlertPhotoLayout.cameraPhotos.get(i);
                    if (photoEntry.path != null) {
                        new File(photoEntry.path).delete();
                    }
                    if (photoEntry.imagePath != null) {
                        new File(photoEntry.imagePath).delete();
                    }
                    if (photoEntry.thumbPath != null) {
                        new File(photoEntry.thumbPath).delete();
                    }
                }
                ChatAttachAlertPhotoLayout.cameraPhotos.clear();
                ChatAttachAlertPhotoLayout.selectedPhotosOrder.clear();
                ChatAttachAlertPhotoLayout.selectedPhotos.clear();
                ChatAttachAlertPhotoLayout.this.counterTextView.setVisibility(4);
                ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.setVisibility(8);
                ChatAttachAlertPhotoLayout.this.adapter.notifyDataSetChanged();
                ChatAttachAlertPhotoLayout.this.cameraAttachAdapter.notifyDataSetChanged();
                ChatAttachAlertPhotoLayout.this.parentAlert.updateCountButton(0);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$cancelButtonPressed$0() {
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            if (chatAttachAlertPhotoLayout.cameraView == null || chatAttachAlertPhotoLayout.parentAlert.isDismissed() || Build.VERSION.SDK_INT < 21) {
                return;
            }
            ChatAttachAlertPhotoLayout.this.cameraView.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void needAddMorePhotos() {
            ChatAttachAlertPhotoLayout.this.cancelTakingPhotos = false;
            if (!ChatAttachAlertPhotoLayout.mediaFromExternalCamera) {
                if (!ChatAttachAlertPhotoLayout.this.cameraOpened) {
                    ChatAttachAlertPhotoLayout.this.openCamera(false);
                }
                ChatAttachAlertPhotoLayout.this.counterTextView.setVisibility(0);
                ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.setVisibility(0);
                ChatAttachAlertPhotoLayout.this.counterTextView.setAlpha(1.0f);
                ChatAttachAlertPhotoLayout.this.updatePhotosCounter(false);
                return;
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.delegate.didPressedButton(0, true, true, 0, false, null, false);
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, boolean z, int i2, boolean z2, String str, boolean z3) {
            if (ChatAttachAlertPhotoLayout.cameraPhotos.isEmpty() || ChatAttachAlertPhotoLayout.this.parentAlert.destroyed) {
                return;
            }
            if (videoEditedInfo != null && i >= 0 && i < ChatAttachAlertPhotoLayout.cameraPhotos.size()) {
                ((MediaController.PhotoEntry) ChatAttachAlertPhotoLayout.cameraPhotos.get(i)).editedInfo = videoEditedInfo;
            }
            BaseFragment baseFragment = ChatAttachAlertPhotoLayout.this.parentAlert.baseFragment;
            if (!(baseFragment instanceof ChatActivity) || !((ChatActivity) baseFragment).isSecretChat()) {
                int size = ChatAttachAlertPhotoLayout.cameraPhotos.size();
                for (int i3 = 0; i3 < size; i3++) {
                    MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) ChatAttachAlertPhotoLayout.cameraPhotos.get(i3);
                    if (photoEntry.ttl <= 0) {
                        AndroidUtilities.addMediaToGallery(photoEntry.path);
                    }
                }
            }
            ChatAttachAlertPhotoLayout.this.parentAlert.applyCaption();
            ChatAttachAlertPhotoLayout.this.closeCamera(false);
            ChatAttachAlertPhotoLayout.this.parentAlert.delegate.didPressedButton(z2 ? 4 : 8, true, z, i2, z2, str, z3);
            ChatAttachAlertPhotoLayout.cameraPhotos.clear();
            ChatAttachAlertPhotoLayout.selectedPhotosOrder.clear();
            ChatAttachAlertPhotoLayout.selectedPhotos.clear();
            ChatAttachAlertPhotoLayout.this.adapter.notifyDataSetChanged();
            ChatAttachAlertPhotoLayout.this.cameraAttachAdapter.notifyDataSetChanged();
            ChatAttachAlertPhotoLayout.this.parentAlert.dismiss(true);
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public boolean scaleToFill() {
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
            if (chatAttachAlertPhotoLayout.parentAlert.destroyed) {
                return false;
            }
            return this.val$sameTakePictureOrientation || Settings.System.getInt(chatAttachAlertPhotoLayout.getContext().getContentResolver(), "accelerometer_rotation", 0) == 1;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public void willHidePhotoViewer() {
            int childCount = ChatAttachAlertPhotoLayout.this.gridView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ChatAttachAlertPhotoLayout.this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    photoAttachPhotoCell.showImage();
                    photoAttachPhotoCell.showCheck(true);
                }
            }
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public boolean canCaptureMorePhotos() {
            return ChatAttachAlertPhotoLayout.this.parentAlert.maxSelectedPhotos != 1;
        }

        @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
        public boolean allowCaption() {
            return !ChatAttachAlertPhotoLayout.this.parentAlert.isPhotoPicker;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showZoomControls(boolean z, boolean z2) {
        if ((this.zoomControlView.getTag() != null && z) || (this.zoomControlView.getTag() == null && !z)) {
            if (z) {
                Runnable runnable = this.zoomControlHideRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatAttachAlertPhotoLayout.this.lambda$showZoomControls$13();
                    }
                };
                this.zoomControlHideRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                return;
            }
            return;
        }
        AnimatorSet animatorSet = this.zoomControlAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.zoomControlView.setTag(z ? 1 : null);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.zoomControlAnimation = animatorSet2;
        animatorSet2.setDuration(180L);
        AnimatorSet animatorSet3 = this.zoomControlAnimation;
        Animator[] animatorArr = new Animator[1];
        ZoomControlView zoomControlView = this.zoomControlView;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(zoomControlView, property, fArr);
        animatorSet3.playTogether(animatorArr);
        this.zoomControlAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.16
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatAttachAlertPhotoLayout.this.zoomControlAnimation = null;
            }
        });
        this.zoomControlAnimation.start();
        if (z) {
            Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlertPhotoLayout.this.lambda$showZoomControls$14();
                }
            };
            this.zoomControlHideRunnable = runnable3;
            AndroidUtilities.runOnUIThread(runnable3, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showZoomControls$13() {
        showZoomControls(false, true);
        this.zoomControlHideRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showZoomControls$14() {
        showZoomControls(false, true);
        this.zoomControlHideRunnable = null;
    }

    protected void updatePhotosCounter(boolean z) {
        if (this.counterTextView == null || this.parentAlert.avatarPicker != 0) {
            return;
        }
        boolean z2 = false;
        boolean z3 = false;
        for (Map.Entry<Object, Object> entry : selectedPhotos.entrySet()) {
            if (((MediaController.PhotoEntry) entry.getValue()).isVideo) {
                z2 = true;
            } else {
                z3 = true;
            }
            if (z2 && z3) {
                break;
            }
        }
        int max = Math.max(1, selectedPhotos.size());
        if (z2 && z3) {
            this.counterTextView.setText(LocaleController.formatPluralString("Media", selectedPhotos.size(), new Object[0]).toUpperCase());
            if (max != this.currentSelectedCount || z) {
                this.parentAlert.selectedTextView.setText(LocaleController.formatPluralString("MediaSelected", max, new Object[0]));
            }
        } else if (z2) {
            this.counterTextView.setText(LocaleController.formatPluralString("Videos", selectedPhotos.size(), new Object[0]).toUpperCase());
            if (max != this.currentSelectedCount || z) {
                this.parentAlert.selectedTextView.setText(LocaleController.formatPluralString("VideosSelected", max, new Object[0]));
            }
        } else {
            this.counterTextView.setText(LocaleController.formatPluralString("Photos", selectedPhotos.size(), new Object[0]).toUpperCase());
            if (max != this.currentSelectedCount || z) {
                this.parentAlert.selectedTextView.setText(LocaleController.formatPluralString("PhotosSelected", max, new Object[0]));
            }
        }
        this.parentAlert.setCanOpenPreview(max > 1);
        this.currentSelectedCount = max;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PhotoAttachPhotoCell getCellForIndex(int i) {
        int childCount = this.gridView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.gridView.getChildAt(i2);
            if (childAt.getTop() < this.gridView.getMeasuredHeight() - this.parentAlert.getClipLayoutBottom() && (childAt instanceof PhotoAttachPhotoCell)) {
                PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                if (photoAttachPhotoCell.getImageView().getTag() != null && ((Integer) photoAttachPhotoCell.getImageView().getTag()).intValue() == i) {
                    return photoAttachPhotoCell;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCameraFlashModeIcon(ImageView imageView, String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 3551:
                if (str.equals("on")) {
                    c = 0;
                    break;
                }
                break;
            case 109935:
                if (str.equals("off")) {
                    c = 1;
                    break;
                }
                break;
            case 3005871:
                if (str.equals(TtmlNode.TEXT_EMPHASIS_AUTO)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                imageView.setImageResource(C3632R.C3634drawable.flash_on);
                imageView.setContentDescription(LocaleController.getString("AccDescrCameraFlashOn", C3632R.string.AccDescrCameraFlashOn));
                return;
            case 1:
                imageView.setImageResource(C3632R.C3634drawable.flash_off);
                imageView.setContentDescription(LocaleController.getString("AccDescrCameraFlashOff", C3632R.string.AccDescrCameraFlashOff));
                return;
            case 2:
                imageView.setImageResource(C3632R.C3634drawable.flash_auto);
                imageView.setContentDescription(LocaleController.getString("AccDescrCameraFlashAuto", C3632R.string.AccDescrCameraFlashAuto));
                return;
            default:
                return;
        }
    }

    public void checkCamera(boolean z) {
        PhotoAttachAdapter photoAttachAdapter;
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert.destroyed || !this.needCamera) {
            return;
        }
        boolean z2 = this.deviceHasGoodCamera;
        boolean z3 = this.noCameraPermissions;
        BaseFragment baseFragment = chatAttachAlert.baseFragment;
        if (baseFragment == null) {
            baseFragment = LaunchActivity.getLastFragment();
        }
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (!SharedConfig.inappCamera) {
            this.deviceHasGoodCamera = false;
        } else if (Build.VERSION.SDK_INT >= 23) {
            boolean z4 = baseFragment.getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0;
            this.noCameraPermissions = z4;
            if (z4) {
                if (z) {
                    try {
                        this.parentAlert.baseFragment.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE"}, 17);
                    } catch (Exception unused) {
                    }
                }
                this.deviceHasGoodCamera = false;
            } else {
                if (z || SharedConfig.hasCameraCache) {
                    CameraController.getInstance().initCamera(null);
                }
                this.deviceHasGoodCamera = CameraController.getInstance().isCameraInitied();
            }
        } else {
            if (z || SharedConfig.hasCameraCache) {
                CameraController.getInstance().initCamera(null);
            }
            this.deviceHasGoodCamera = CameraController.getInstance().isCameraInitied();
        }
        if ((z2 != this.deviceHasGoodCamera || z3 != this.noCameraPermissions) && (photoAttachAdapter = this.adapter) != null) {
            photoAttachAdapter.notifyDataSetChanged();
        }
        ChatAttachAlert chatAttachAlert2 = this.parentAlert;
        if (chatAttachAlert2.destroyed || !chatAttachAlert2.isShowing() || !this.deviceHasGoodCamera || this.parentAlert.getBackDrawable().getAlpha() == 0 || this.cameraOpened) {
            return;
        }
        showCamera();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCamera(boolean z) {
        CameraView cameraView;
        if (this.cameraView == null || this.cameraInitAnimation != null || this.parentAlert.isDismissed()) {
            return;
        }
        this.cameraView.initTexture();
        int i = 0;
        if (shouldLoadAllMedia()) {
            this.tooltipTextView.setVisibility(0);
        } else {
            this.tooltipTextView.setVisibility(8);
        }
        if (cameraPhotos.isEmpty()) {
            this.counterTextView.setVisibility(4);
            this.cameraPhotoRecyclerView.setVisibility(8);
        } else {
            this.counterTextView.setVisibility(0);
            this.cameraPhotoRecyclerView.setVisibility(0);
        }
        if (this.parentAlert.commentTextView.isKeyboardVisible() && isFocusable()) {
            this.parentAlert.commentTextView.closeKeyboard();
        }
        this.zoomControlView.setVisibility(0);
        this.zoomControlView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.cameraPanel.setVisibility(0);
        this.cameraPanel.setTag(null);
        int[] iArr = this.animateCameraValues;
        iArr[0] = 0;
        int i2 = this.itemSize;
        iArr[1] = i2;
        iArr[2] = i2;
        this.additionCloseCameraY = BitmapDescriptorFactory.HUE_RED;
        this.cameraExpanded = true;
        CameraView cameraView2 = this.cameraView;
        if (cameraView2 != null) {
            cameraView2.setFpsLimit(-1);
        }
        AndroidUtilities.hideKeyboard(this);
        AndroidUtilities.setLightNavigationBar(this.parentAlert.getWindow(), false);
        this.parentAlert.getWindow().addFlags(128);
        if (z) {
            setCameraOpenProgress(BitmapDescriptorFactory.HUE_RED);
            this.cameraAnimationInProgress = true;
            this.notificationsLocker.lock();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this, "cameraOpenProgress", BitmapDescriptorFactory.HUE_RED, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.cameraPanel, View.ALPHA, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.counterTextView, View.ALPHA, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.cameraPhotoRecyclerView, View.ALPHA, 1.0f));
            int i3 = 0;
            while (true) {
                if (i3 >= 2) {
                    break;
                } else if (this.flashModeButton[i3].getVisibility() == 0) {
                    arrayList.add(ObjectAnimator.ofFloat(this.flashModeButton[i3], View.ALPHA, 1.0f));
                    break;
                } else {
                    i3++;
                }
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            animatorSet.setDuration(350L);
            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.17
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    CameraView cameraView3;
                    ChatAttachAlertPhotoLayout.this.notificationsLocker.unlock();
                    ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress = false;
                    CameraView cameraView4 = ChatAttachAlertPhotoLayout.this.cameraView;
                    if (cameraView4 != null) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            cameraView4.invalidateOutline();
                        } else {
                            cameraView4.invalidate();
                        }
                    }
                    if (ChatAttachAlertPhotoLayout.this.cameraOpened) {
                        ChatAttachAlertPhotoLayout.this.parentAlert.delegate.onCameraOpened();
                    }
                    if (Build.VERSION.SDK_INT < 21 || (cameraView3 = ChatAttachAlertPhotoLayout.this.cameraView) == null) {
                        return;
                    }
                    cameraView3.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
                }
            });
            animatorSet.start();
        } else {
            setCameraOpenProgress(1.0f);
            this.cameraPanel.setAlpha(1.0f);
            this.counterTextView.setAlpha(1.0f);
            this.cameraPhotoRecyclerView.setAlpha(1.0f);
            while (true) {
                if (i >= 2) {
                    break;
                } else if (this.flashModeButton[i].getVisibility() == 0) {
                    this.flashModeButton[i].setAlpha(1.0f);
                    break;
                } else {
                    i++;
                }
            }
            this.parentAlert.delegate.onCameraOpened();
            CameraView cameraView3 = this.cameraView;
            if (cameraView3 != null && Build.VERSION.SDK_INT >= 21) {
                cameraView3.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
            }
        }
        this.cameraOpened = true;
        CameraView cameraView4 = this.cameraView;
        if (cameraView4 != null) {
            cameraView4.setImportantForAccessibility(2);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.gridView.setImportantForAccessibility(4);
        }
        if (LiteMode.isEnabled(LiteMode.FLAGS_CHAT) || (cameraView = this.cameraView) == null || !cameraView.isInited()) {
            return;
        }
        this.cameraView.showTexture(true, z);
    }

    public void loadGalleryPhotos() {
        MediaController.AlbumEntry albumEntry;
        if (shouldLoadAllMedia()) {
            albumEntry = MediaController.allMediaAlbumEntry;
        } else {
            albumEntry = MediaController.allPhotosAlbumEntry;
        }
        if (albumEntry != null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        MediaController.loadGalleryPhotosAlbums(0);
    }

    private boolean shouldLoadAllMedia() {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        return !chatAttachAlert.isPhotoPicker && ((chatAttachAlert.baseFragment instanceof ChatActivity) || chatAttachAlert.avatarPicker == 2);
    }

    public void showCamera() {
        if (this.parentAlert.paused || !this.mediaEnabled) {
            return;
        }
        if (this.cameraView == null) {
            boolean z = !LiteMode.isEnabled(LiteMode.FLAGS_CHAT);
            Context context = getContext();
            Boolean bool = this.isCameraFrontfaceBeforeEnteringEditMode;
            CameraView cameraView = new CameraView(context, bool != null ? bool.booleanValue() : this.parentAlert.openWithFrontFaceCamera, z) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.18
                Bulletin.Delegate bulletinDelegate = new Bulletin.Delegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.18.1
                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean allowLayoutChanges() {
                        return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                    }

                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean clipWithGradient(int i) {
                        return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
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
                        return AndroidUtilities.m107dp(126) + ChatAttachAlertPhotoLayout.this.parentAlert.getBottomInset();
                    }
                };

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.messenger.camera.CameraView, android.view.ViewGroup, android.view.View
                public void dispatchDraw(Canvas canvas) {
                    if (Build.VERSION.SDK_INT < 21) {
                        float commentTextViewTop = ((ChatAttachAlertPhotoLayout.this.parentAlert.getCommentTextViewTop() + ChatAttachAlertPhotoLayout.this.currentPanTranslationY) + ChatAttachAlertPhotoLayout.this.parentAlert.getContainerView().getTranslationY()) - ChatAttachAlertPhotoLayout.this.cameraView.getTranslationY();
                        MentionsContainerView mentionsContainerView = ChatAttachAlertPhotoLayout.this.parentAlert.mentionContainer;
                        int min = (int) Math.min(commentTextViewTop - (mentionsContainerView != null ? mentionsContainerView.clipBottom() + AndroidUtilities.m107dp(8) : 0.0f), getMeasuredHeight());
                        if (!ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress) {
                            if (!ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress && !ChatAttachAlertPhotoLayout.this.cameraOpened) {
                                AndroidUtilities.rectTmp.set(ChatAttachAlertPhotoLayout.this.cameraViewOffsetX, ChatAttachAlertPhotoLayout.this.cameraViewOffsetY, getMeasuredWidth(), Math.min(min, getMeasuredHeight()));
                            } else {
                                AndroidUtilities.rectTmp.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), Math.min(min, getMeasuredHeight()));
                            }
                        } else {
                            RectF rectF = AndroidUtilities.rectTmp;
                            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                            float f = chatAttachAlertPhotoLayout.animationClipLeft + (chatAttachAlertPhotoLayout.cameraViewOffsetX * (1.0f - ChatAttachAlertPhotoLayout.this.cameraOpenProgress));
                            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                            float f2 = chatAttachAlertPhotoLayout2.animationClipTop + (chatAttachAlertPhotoLayout2.cameraViewOffsetY * (1.0f - ChatAttachAlertPhotoLayout.this.cameraOpenProgress));
                            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout3 = ChatAttachAlertPhotoLayout.this;
                            rectF.set(f, f2, chatAttachAlertPhotoLayout3.animationClipRight, Math.min(min, chatAttachAlertPhotoLayout3.animationClipBottom));
                        }
                        canvas.save();
                        canvas.clipRect(AndroidUtilities.rectTmp);
                        super.dispatchDraw(canvas);
                        canvas.restore();
                        return;
                    }
                    super.dispatchDraw(canvas);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.messenger.camera.CameraView, android.view.ViewGroup, android.view.View
                public void onAttachedToWindow() {
                    super.onAttachedToWindow();
                    Bulletin.addDelegate(ChatAttachAlertPhotoLayout.this.cameraView, this.bulletinDelegate);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void onDetachedFromWindow() {
                    super.onDetachedFromWindow();
                    Bulletin.removeDelegate(ChatAttachAlertPhotoLayout.this.cameraView);
                }
            };
            this.cameraView = cameraView;
            PhotoAttachCameraCell photoAttachCameraCell = this.cameraCell;
            if (photoAttachCameraCell != null && z) {
                cameraView.setThumbDrawable(photoAttachCameraCell.getDrawable());
            }
            CameraView cameraView2 = this.cameraView;
            BaseFragment baseFragment = this.parentAlert.baseFragment;
            cameraView2.setRecordFile(AndroidUtilities.generateVideoPath((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).isSecretChat()));
            this.cameraView.setFocusable(true);
            this.cameraView.setFpsLimit(30);
            if (Build.VERSION.SDK_INT >= 21) {
                this.cameraView.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.19
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        float commentTextViewTop = ChatAttachAlertPhotoLayout.this.parentAlert.getCommentTextViewTop();
                        MentionsContainerView mentionsContainerView = ChatAttachAlertPhotoLayout.this.parentAlert.mentionContainer;
                        int min = (int) Math.min((((commentTextViewTop - (mentionsContainerView != null ? mentionsContainerView.clipBottom() + AndroidUtilities.m107dp(8) : BitmapDescriptorFactory.HUE_RED)) + ChatAttachAlertPhotoLayout.this.currentPanTranslationY) + ChatAttachAlertPhotoLayout.this.parentAlert.getContainerView().getTranslationY()) - ChatAttachAlertPhotoLayout.this.cameraView.getTranslationY(), view.getMeasuredHeight());
                        if (!ChatAttachAlertPhotoLayout.this.cameraOpened) {
                            if (ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress) {
                                min = AndroidUtilities.lerp(min, view.getMeasuredHeight(), ChatAttachAlertPhotoLayout.this.cameraOpenProgress);
                            }
                        } else {
                            min = view.getMeasuredHeight();
                        }
                        if (!ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress) {
                            if (!ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress && !ChatAttachAlertPhotoLayout.this.cameraOpened) {
                                int m108dp = AndroidUtilities.m108dp(ChatAttachAlertPhotoLayout.this.parentAlert.cornerRadius * 8.0f);
                                outline.setRoundRect((int) ChatAttachAlertPhotoLayout.this.cameraViewOffsetX, (int) ChatAttachAlertPhotoLayout.this.cameraViewOffsetY, view.getMeasuredWidth() + m108dp, Math.min(min, view.getMeasuredHeight()) + m108dp, m108dp);
                                return;
                            }
                            outline.setRect(0, 0, view.getMeasuredWidth(), Math.min(min, view.getMeasuredHeight()));
                            return;
                        }
                        RectF rectF = AndroidUtilities.rectTmp;
                        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                        float f = chatAttachAlertPhotoLayout.animationClipLeft + (chatAttachAlertPhotoLayout.cameraViewOffsetX * (1.0f - ChatAttachAlertPhotoLayout.this.cameraOpenProgress));
                        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                        float f2 = chatAttachAlertPhotoLayout2.animationClipTop + (chatAttachAlertPhotoLayout2.cameraViewOffsetY * (1.0f - ChatAttachAlertPhotoLayout.this.cameraOpenProgress));
                        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout3 = ChatAttachAlertPhotoLayout.this;
                        rectF.set(f, f2, chatAttachAlertPhotoLayout3.animationClipRight, chatAttachAlertPhotoLayout3.animationClipBottom);
                        outline.setRect((int) rectF.left, (int) rectF.top, (int) rectF.right, Math.min(min, (int) rectF.bottom));
                    }
                });
                this.cameraView.setClipToOutline(true);
            }
            this.cameraView.setContentDescription(LocaleController.getString("AccDescrInstantCamera", C3632R.string.AccDescrInstantCamera));
            BottomSheet.ContainerView container = this.parentAlert.getContainer();
            CameraView cameraView3 = this.cameraView;
            int i = this.itemSize;
            container.addView(cameraView3, 1, new FrameLayout.LayoutParams(i, i));
            this.cameraView.setDelegate(new CameraView.CameraViewDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.20
                @Override // org.telegram.messenger.camera.CameraView.CameraViewDelegate
                public void onCameraInit() {
                    if (ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession().getCurrentFlashMode().equals(ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession().getNextFlashMode())) {
                        for (int i2 = 0; i2 < 2; i2++) {
                            ChatAttachAlertPhotoLayout.this.flashModeButton[i2].setVisibility(4);
                            ChatAttachAlertPhotoLayout.this.flashModeButton[i2].setAlpha(BitmapDescriptorFactory.HUE_RED);
                            ChatAttachAlertPhotoLayout.this.flashModeButton[i2].setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        }
                    } else {
                        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                        chatAttachAlertPhotoLayout.setCameraFlashModeIcon(chatAttachAlertPhotoLayout.flashModeButton[0], ChatAttachAlertPhotoLayout.this.cameraView.getCameraSession().getCurrentFlashMode());
                        int i3 = 0;
                        while (i3 < 2) {
                            ChatAttachAlertPhotoLayout.this.flashModeButton[i3].setVisibility(i3 == 0 ? 0 : 4);
                            ChatAttachAlertPhotoLayout.this.flashModeButton[i3].setAlpha((i3 == 0 && ChatAttachAlertPhotoLayout.this.cameraOpened) ? 1.0f : 0.0f);
                            ChatAttachAlertPhotoLayout.this.flashModeButton[i3].setTranslationY(BitmapDescriptorFactory.HUE_RED);
                            i3++;
                        }
                    }
                    ChatAttachAlertPhotoLayout.this.switchCameraButton.setImageResource(ChatAttachAlertPhotoLayout.this.cameraView.isFrontface() ? C3632R.C3634drawable.camera_revert1 : C3632R.C3634drawable.camera_revert2);
                    ChatAttachAlertPhotoLayout.this.switchCameraButton.setVisibility(ChatAttachAlertPhotoLayout.this.cameraView.hasFrontFaceCamera() ? 0 : 4);
                    if (!ChatAttachAlertPhotoLayout.this.cameraOpened) {
                        ChatAttachAlertPhotoLayout.this.cameraInitAnimation = new AnimatorSet();
                        ChatAttachAlertPhotoLayout.this.cameraInitAnimation.playTogether(ObjectAnimator.ofFloat(ChatAttachAlertPhotoLayout.this.cameraView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(ChatAttachAlertPhotoLayout.this.cameraIcon, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                        ChatAttachAlertPhotoLayout.this.cameraInitAnimation.setDuration(180L);
                        ChatAttachAlertPhotoLayout.this.cameraInitAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.20.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (animator.equals(ChatAttachAlertPhotoLayout.this.cameraInitAnimation)) {
                                    ChatAttachAlertPhotoLayout.this.canSaveCameraPreview = true;
                                    ChatAttachAlertPhotoLayout.this.cameraInitAnimation = null;
                                    if (ChatAttachAlertPhotoLayout.this.isHidden) {
                                        return;
                                    }
                                    int childCount = ChatAttachAlertPhotoLayout.this.gridView.getChildCount();
                                    for (int i4 = 0; i4 < childCount; i4++) {
                                        View childAt = ChatAttachAlertPhotoLayout.this.gridView.getChildAt(i4);
                                        if (childAt instanceof PhotoAttachCameraCell) {
                                            childAt.setVisibility(4);
                                            return;
                                        }
                                    }
                                }
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                                ChatAttachAlertPhotoLayout.this.cameraInitAnimation = null;
                            }
                        });
                        ChatAttachAlertPhotoLayout.this.cameraInitAnimation.start();
                    }
                    if (ChatAttachAlertPhotoLayout.this.afterCameraInitRunnable != null) {
                        ChatAttachAlertPhotoLayout.this.afterCameraInitRunnable.run();
                    }
                }
            });
            if (this.cameraIcon == null) {
                FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.21
                    @Override // android.view.View
                    protected void onDraw(Canvas canvas) {
                        int min = (int) Math.min(((ChatAttachAlertPhotoLayout.this.parentAlert.getCommentTextViewTop() + ChatAttachAlertPhotoLayout.this.currentPanTranslationY) + ChatAttachAlertPhotoLayout.this.parentAlert.getContainerView().getTranslationY()) - ChatAttachAlertPhotoLayout.this.cameraView.getTranslationY(), getMeasuredHeight());
                        if (!ChatAttachAlertPhotoLayout.this.cameraOpened) {
                            if (ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress) {
                                min = AndroidUtilities.lerp(min, getMeasuredHeight(), ChatAttachAlertPhotoLayout.this.cameraOpenProgress);
                            }
                        } else {
                            min = getMeasuredHeight();
                        }
                        int intrinsicWidth = ChatAttachAlertPhotoLayout.this.cameraDrawable.getIntrinsicWidth();
                        int intrinsicHeight = ChatAttachAlertPhotoLayout.this.cameraDrawable.getIntrinsicHeight();
                        int i2 = (ChatAttachAlertPhotoLayout.this.itemSize - intrinsicWidth) / 2;
                        int i3 = (ChatAttachAlertPhotoLayout.this.itemSize - intrinsicHeight) / 2;
                        if (ChatAttachAlertPhotoLayout.this.cameraViewOffsetY != BitmapDescriptorFactory.HUE_RED) {
                            i3 = (int) (i3 - ChatAttachAlertPhotoLayout.this.cameraViewOffsetY);
                        }
                        boolean z2 = min < getMeasuredHeight();
                        if (z2) {
                            canvas.save();
                            canvas.clipRect(0, 0, getMeasuredWidth(), min);
                        }
                        ChatAttachAlertPhotoLayout.this.cameraDrawable.setBounds(i2, i3, intrinsicWidth + i2, intrinsicHeight + i3);
                        ChatAttachAlertPhotoLayout.this.cameraDrawable.draw(canvas);
                        if (z2) {
                            canvas.restore();
                        }
                    }
                };
                this.cameraIcon = frameLayout;
                frameLayout.setWillNotDraw(false);
                this.cameraIcon.setClipChildren(true);
            }
            BottomSheet.ContainerView container2 = this.parentAlert.getContainer();
            FrameLayout frameLayout2 = this.cameraIcon;
            int i2 = this.itemSize;
            container2.addView(frameLayout2, 2, new FrameLayout.LayoutParams(i2, i2));
            this.cameraView.setAlpha(this.mediaEnabled ? 1.0f : 0.2f);
            this.cameraView.setEnabled(this.mediaEnabled);
            this.cameraIcon.setAlpha(this.mediaEnabled ? 1.0f : 0.2f);
            this.cameraIcon.setEnabled(this.mediaEnabled);
            if (this.isHidden) {
                this.cameraView.setVisibility(8);
                this.cameraIcon.setVisibility(8);
            }
            if (this.cameraOpened) {
                this.cameraIcon.setAlpha(BitmapDescriptorFactory.HUE_RED);
            } else {
                checkCameraViewPosition();
            }
            invalidate();
        }
        ZoomControlView zoomControlView = this.zoomControlView;
        if (zoomControlView != null) {
            zoomControlView.setZoom(BitmapDescriptorFactory.HUE_RED, false);
            this.cameraZoom = BitmapDescriptorFactory.HUE_RED;
        }
        if (this.cameraOpened) {
            return;
        }
        this.cameraView.setTranslationX(this.cameraViewLocation[0]);
        this.cameraView.setTranslationY(this.cameraViewLocation[1] + this.currentPanTranslationY);
        this.cameraIcon.setTranslationX(this.cameraViewLocation[0]);
        this.cameraIcon.setTranslationY(this.cameraViewLocation[1] + this.cameraViewOffsetY + this.currentPanTranslationY);
    }

    public void hideCamera(boolean z) {
        if (!this.deviceHasGoodCamera || this.cameraView == null) {
            return;
        }
        saveLastCameraBitmap();
        int childCount = this.gridView.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = this.gridView.getChildAt(i);
            if (childAt instanceof PhotoAttachCameraCell) {
                childAt.setVisibility(0);
                ((PhotoAttachCameraCell) childAt).updateBitmap();
                break;
            }
            i++;
        }
        this.cameraView.destroy(z, null);
        AnimatorSet animatorSet = this.cameraInitAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.cameraInitAnimation = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                ChatAttachAlertPhotoLayout.this.lambda$hideCamera$15();
            }
        }, 300L);
        this.canSaveCameraPreview = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideCamera$15() {
        this.parentAlert.getContainer().removeView(this.cameraView);
        this.parentAlert.getContainer().removeView(this.cameraIcon);
        this.cameraView = null;
        this.cameraIcon = null;
    }

    private void saveLastCameraBitmap() {
        if (this.canSaveCameraPreview) {
            try {
                Bitmap bitmap = this.cameraView.getTextureView().getBitmap();
                if (bitmap != null) {
                    Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), this.cameraView.getMatrix(), true);
                    bitmap.recycle();
                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(createBitmap, 80, (int) (createBitmap.getHeight() / (createBitmap.getWidth() / 80.0f)), true);
                    if (createScaledBitmap != null) {
                        if (createScaledBitmap != createBitmap) {
                            createBitmap.recycle();
                        }
                        Utilities.blurBitmap(createScaledBitmap, 7, 1, createScaledBitmap.getWidth(), createScaledBitmap.getHeight(), createScaledBitmap.getRowBytes());
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(ApplicationLoader.getFilesDirFixed(), "cthumb.jpg"));
                        createScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                        createScaledBitmap.recycle();
                        fileOutputStream.close();
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:22|(1:24)|25|(1:98)(1:30)|(6:32|(5:34|(1:36)|37|(1:39)|(1:41))|96|43|(1:95)|47)(1:97)|(1:94)|52|(3:53|54|55)|(4:57|58|(2:60|61)|63)|64|65|67|68|69|70) */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f6, code lost:
        if (new java.io.File(r0).exists() != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0194, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0195, code lost:
        org.telegram.messenger.FileLog.m102e(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0146 -> B:97:0x015f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResultFragment(int r31, android.content.Intent r32, java.lang.String r33) {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.onActivityResultFragment(int, android.content.Intent, java.lang.String):void");
    }

    public void closeCamera(boolean z) {
        CameraView cameraView;
        if (this.takingPhoto || this.cameraView == null) {
            return;
        }
        int[] iArr = this.animateCameraValues;
        int i = this.itemSize;
        iArr[1] = i;
        iArr[2] = i;
        Runnable runnable = this.zoomControlHideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.zoomControlHideRunnable = null;
        }
        AndroidUtilities.setLightNavigationBar(this.parentAlert.getWindow(), ((double) AndroidUtilities.computePerceivedBrightness(getThemedColor(Theme.key_windowBackgroundGray))) > 0.721d);
        if (z) {
            this.additionCloseCameraY = this.cameraView.getTranslationY();
            this.cameraAnimationInProgress = true;
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this, "cameraOpenProgress", BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.cameraPanel, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.zoomControlView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.counterTextView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.cameraPhotoRecyclerView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            int i2 = 0;
            while (true) {
                if (i2 >= 2) {
                    break;
                } else if (this.flashModeButton[i2].getVisibility() == 0) {
                    arrayList.add(ObjectAnimator.ofFloat(this.flashModeButton[i2], View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    break;
                } else {
                    i2++;
                }
            }
            this.notificationsLocker.lock();
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            animatorSet.setDuration(220L);
            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.22
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ChatAttachAlertPhotoLayout.this.notificationsLocker.unlock();
                    ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                    chatAttachAlertPhotoLayout.cameraExpanded = false;
                    chatAttachAlertPhotoLayout.parentAlert.getWindow().clearFlags(128);
                    ChatAttachAlertPhotoLayout.this.setCameraOpenProgress(BitmapDescriptorFactory.HUE_RED);
                    ChatAttachAlertPhotoLayout.this.cameraAnimationInProgress = false;
                    CameraView cameraView2 = ChatAttachAlertPhotoLayout.this.cameraView;
                    if (cameraView2 != null) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            cameraView2.invalidateOutline();
                        } else {
                            cameraView2.invalidate();
                        }
                    }
                    ChatAttachAlertPhotoLayout.this.cameraOpened = false;
                    if (ChatAttachAlertPhotoLayout.this.cameraPanel != null) {
                        ChatAttachAlertPhotoLayout.this.cameraPanel.setVisibility(8);
                    }
                    if (ChatAttachAlertPhotoLayout.this.zoomControlView != null) {
                        ChatAttachAlertPhotoLayout.this.zoomControlView.setVisibility(8);
                        ChatAttachAlertPhotoLayout.this.zoomControlView.setTag(null);
                    }
                    if (ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView != null) {
                        ChatAttachAlertPhotoLayout.this.cameraPhotoRecyclerView.setVisibility(8);
                    }
                    CameraView cameraView3 = ChatAttachAlertPhotoLayout.this.cameraView;
                    if (cameraView3 != null) {
                        cameraView3.setFpsLimit(30);
                        if (Build.VERSION.SDK_INT >= 21) {
                            ChatAttachAlertPhotoLayout.this.cameraView.setSystemUiVisibility(1024);
                        }
                    }
                }
            });
            animatorSet.start();
        } else {
            this.cameraExpanded = false;
            this.parentAlert.getWindow().clearFlags(128);
            setCameraOpenProgress(BitmapDescriptorFactory.HUE_RED);
            this.animateCameraValues[0] = 0;
            setCameraOpenProgress(BitmapDescriptorFactory.HUE_RED);
            this.cameraPanel.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.cameraPanel.setVisibility(8);
            this.zoomControlView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.zoomControlView.setTag(null);
            this.zoomControlView.setVisibility(8);
            this.cameraPhotoRecyclerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.counterTextView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.cameraPhotoRecyclerView.setVisibility(8);
            int i3 = 0;
            while (true) {
                if (i3 >= 2) {
                    break;
                } else if (this.flashModeButton[i3].getVisibility() == 0) {
                    this.flashModeButton[i3].setAlpha(BitmapDescriptorFactory.HUE_RED);
                    break;
                } else {
                    i3++;
                }
            }
            this.cameraOpened = false;
            CameraView cameraView2 = this.cameraView;
            if (cameraView2 != null) {
                cameraView2.setFpsLimit(30);
                if (Build.VERSION.SDK_INT >= 21) {
                    this.cameraView.setSystemUiVisibility(1024);
                }
            }
        }
        CameraView cameraView3 = this.cameraView;
        if (cameraView3 != null) {
            cameraView3.setImportantForAccessibility(0);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.gridView.setImportantForAccessibility(0);
        }
        if (LiteMode.isEnabled(LiteMode.FLAGS_CHAT) || (cameraView = this.cameraView) == null) {
            return;
        }
        cameraView.showTexture(false, z);
    }

    @Keep
    public void setCameraOpenProgress(float f) {
        int i;
        int i2;
        if (this.cameraView == null) {
            return;
        }
        this.cameraOpenProgress = f;
        int[] iArr = this.animateCameraValues;
        float f2 = iArr[1];
        float f3 = iArr[2];
        Point point = AndroidUtilities.displaySize;
        int i3 = point.x;
        int i4 = point.y;
        float width = (this.parentAlert.getContainer().getWidth() - this.parentAlert.getLeftInset()) - this.parentAlert.getRightInset();
        float height = this.parentAlert.getContainer().getHeight();
        float[] fArr = this.cameraViewLocation;
        float f4 = fArr[0];
        float f5 = fArr[1];
        float f6 = this.additionCloseCameraY;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            this.cameraIcon.setTranslationX(fArr[0]);
            this.cameraIcon.setTranslationY(this.cameraViewLocation[1] + this.cameraViewOffsetY);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.cameraView.getLayoutParams();
        float textureHeight = this.cameraView.getTextureHeight(f2, f3) / this.cameraView.getTextureHeight(width, height);
        float f7 = f3 / height;
        float f8 = f2 / width;
        if (this.cameraExpanded) {
            i = (int) width;
            i2 = (int) height;
            float f9 = 1.0f - f;
            float f10 = (textureHeight * f9) + f;
            this.cameraView.getTextureView().setScaleX(f10);
            this.cameraView.getTextureView().setScaleY(f10);
            float f11 = f4 * f9;
            this.cameraView.setTranslationX((f11 + (f * BitmapDescriptorFactory.HUE_RED)) - (((1.0f - ((f8 * f9) + f)) * width) / 2.0f));
            float f12 = f5 * f9;
            this.cameraView.setTranslationY(((f6 * f) + f12) - (((1.0f - ((f7 * f9) + f)) * height) / 2.0f));
            this.animationClipTop = f12 - this.cameraView.getTranslationY();
            this.animationClipBottom = (((f5 + f3) * f9) - this.cameraView.getTranslationY()) + (height * f);
            this.animationClipLeft = f11 - this.cameraView.getTranslationX();
            this.animationClipRight = (((f4 + f2) * f9) - this.cameraView.getTranslationX()) + (width * f);
        } else {
            i = (int) f2;
            i2 = (int) f3;
            this.cameraView.getTextureView().setScaleX(1.0f);
            this.cameraView.getTextureView().setScaleY(1.0f);
            this.animationClipTop = BitmapDescriptorFactory.HUE_RED;
            this.animationClipBottom = height;
            this.animationClipLeft = BitmapDescriptorFactory.HUE_RED;
            this.animationClipRight = width;
            this.cameraView.setTranslationX(f4);
            this.cameraView.setTranslationY(f5);
        }
        if (f <= 0.5f) {
            this.cameraIcon.setAlpha(1.0f - (f / 0.5f));
        } else {
            this.cameraIcon.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        if (layoutParams.width != i || layoutParams.height != i2) {
            layoutParams.width = i;
            layoutParams.height = i2;
            this.cameraView.requestLayout();
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.cameraView.invalidateOutline();
        } else {
            this.cameraView.invalidate();
        }
    }

    @Keep
    public float getCameraOpenProgress() {
        return this.cameraOpenProgress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkCameraViewPosition() {
        TextView textView;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            CameraView cameraView = this.cameraView;
            if (cameraView != null) {
                cameraView.invalidateOutline();
            }
            RecyclerView.ViewHolder findViewHolderForAdapterPosition2 = this.gridView.findViewHolderForAdapterPosition(this.itemsPerRow - 1);
            if (findViewHolderForAdapterPosition2 != null) {
                findViewHolderForAdapterPosition2.itemView.invalidateOutline();
            }
            if ((!this.adapter.needCamera || !this.deviceHasGoodCamera || this.selectedAlbumEntry != this.galleryAlbumEntry) && (findViewHolderForAdapterPosition = this.gridView.findViewHolderForAdapterPosition(0)) != null) {
                findViewHolderForAdapterPosition.itemView.invalidateOutline();
            }
        }
        CameraView cameraView2 = this.cameraView;
        if (cameraView2 != null) {
            cameraView2.invalidate();
        }
        if (i >= 23 && (textView = this.recordTime) != null) {
            ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).topMargin = getRootWindowInsets() == null ? AndroidUtilities.m107dp(16) : getRootWindowInsets().getSystemWindowInsetTop() + AndroidUtilities.m107dp(2);
        }
        if (this.deviceHasGoodCamera) {
            int childCount = this.gridView.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = this.gridView.getChildAt(i2);
                if (childAt instanceof PhotoAttachCameraCell) {
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 < 19 || childAt.isAttachedToWindow()) {
                        float y = childAt.getY() + this.gridView.getY() + getY();
                        float y2 = this.parentAlert.getSheetContainer().getY() + y;
                        float x = childAt.getX() + this.gridView.getX() + getX() + this.parentAlert.getSheetContainer().getX();
                        if (i3 >= 23) {
                            x -= getRootWindowInsets().getSystemWindowInsetLeft();
                        }
                        float currentActionBarHeight = ((i3 < 21 || this.parentAlert.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight) + C3704ActionBar.getCurrentActionBarHeight();
                        float f = y < currentActionBarHeight ? currentActionBarHeight - y : 0.0f;
                        if (f != this.cameraViewOffsetY) {
                            this.cameraViewOffsetY = f;
                            CameraView cameraView3 = this.cameraView;
                            if (cameraView3 != null) {
                                if (i3 >= 21) {
                                    cameraView3.invalidateOutline();
                                } else {
                                    cameraView3.invalidate();
                                }
                            }
                            FrameLayout frameLayout = this.cameraIcon;
                            if (frameLayout != null) {
                                frameLayout.invalidate();
                            }
                        }
                        float measuredHeight = (int) ((this.parentAlert.getSheetContainer().getMeasuredHeight() - this.parentAlert.buttonsRecyclerView.getMeasuredHeight()) + this.parentAlert.buttonsRecyclerView.getTranslationY());
                        MentionsContainerView mentionsContainerView = this.parentAlert.mentionContainer;
                        if (mentionsContainerView != null) {
                            measuredHeight -= mentionsContainerView.clipBottom() - AndroidUtilities.m107dp(6);
                        }
                        if (childAt.getMeasuredHeight() + y > measuredHeight) {
                            this.cameraViewOffsetBottomY = Math.min(-AndroidUtilities.m107dp(5), y - measuredHeight) + childAt.getMeasuredHeight();
                        } else {
                            this.cameraViewOffsetBottomY = BitmapDescriptorFactory.HUE_RED;
                        }
                        float[] fArr = this.cameraViewLocation;
                        fArr[0] = x;
                        fArr[1] = y2;
                        applyCameraViewPosition();
                        return;
                    }
                } else {
                    i2++;
                }
            }
            if (this.cameraViewOffsetY != BitmapDescriptorFactory.HUE_RED || this.cameraViewOffsetX != BitmapDescriptorFactory.HUE_RED) {
                this.cameraViewOffsetX = BitmapDescriptorFactory.HUE_RED;
                this.cameraViewOffsetY = BitmapDescriptorFactory.HUE_RED;
                CameraView cameraView4 = this.cameraView;
                if (cameraView4 != null) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        cameraView4.invalidateOutline();
                    } else {
                        cameraView4.invalidate();
                    }
                }
                FrameLayout frameLayout2 = this.cameraIcon;
                if (frameLayout2 != null) {
                    frameLayout2.invalidate();
                }
            }
            this.cameraViewLocation[0] = AndroidUtilities.m107dp(-400);
            this.cameraViewLocation[1] = 0.0f;
            applyCameraViewPosition();
        }
    }

    private void applyCameraViewPosition() {
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            if (!this.cameraOpened) {
                cameraView.setTranslationX(this.cameraViewLocation[0]);
                this.cameraView.setTranslationY(this.cameraViewLocation[1] + this.currentPanTranslationY);
            }
            this.cameraIcon.setTranslationX(this.cameraViewLocation[0]);
            this.cameraIcon.setTranslationY(this.cameraViewLocation[1] + this.cameraViewOffsetY + this.currentPanTranslationY);
            int i = this.itemSize;
            if (!this.cameraOpened) {
                this.cameraView.setClipTop((int) this.cameraViewOffsetY);
                this.cameraView.setClipBottom((int) this.cameraViewOffsetBottomY);
                final FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.cameraView.getLayoutParams();
                if (layoutParams.height != i || layoutParams.width != i) {
                    layoutParams.width = i;
                    layoutParams.height = i;
                    this.cameraView.setLayoutParams(layoutParams);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda14
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatAttachAlertPhotoLayout.this.lambda$applyCameraViewPosition$16(layoutParams);
                        }
                    });
                }
            }
            int i2 = this.itemSize;
            int i3 = (int) (i2 - this.cameraViewOffsetX);
            int i4 = (int) ((i2 - this.cameraViewOffsetY) - this.cameraViewOffsetBottomY);
            final FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.cameraIcon.getLayoutParams();
            if (layoutParams2.height == i4 && layoutParams2.width == i3) {
                return;
            }
            layoutParams2.width = i3;
            layoutParams2.height = i4;
            this.cameraIcon.setLayoutParams(layoutParams2);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlertPhotoLayout.this.lambda$applyCameraViewPosition$17(layoutParams2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyCameraViewPosition$16(FrameLayout.LayoutParams layoutParams) {
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyCameraViewPosition$17(FrameLayout.LayoutParams layoutParams) {
        FrameLayout frameLayout = this.cameraIcon;
        if (frameLayout != null) {
            frameLayout.setLayoutParams(layoutParams);
        }
    }

    public HashMap<Object, Object> getSelectedPhotos() {
        return selectedPhotos;
    }

    public ArrayList<Object> getSelectedPhotosOrder() {
        return selectedPhotosOrder;
    }

    public void updateSelected(HashMap<Object, Object> hashMap, ArrayList<Object> arrayList, boolean z) {
        selectedPhotos.clear();
        selectedPhotos.putAll(hashMap);
        selectedPhotosOrder.clear();
        selectedPhotosOrder.addAll(arrayList);
        if (z) {
            updatePhotosCounter(false);
            updateCheckedPhotoIndices();
            int childCount = this.gridView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    int childAdapterPosition = this.gridView.getChildAdapterPosition(childAt);
                    if (this.adapter.needCamera && this.selectedAlbumEntry == this.galleryAlbumEntry) {
                        childAdapterPosition--;
                    }
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    if (this.parentAlert.avatarPicker != 0) {
                        photoAttachPhotoCell.getCheckBox().setVisibility(8);
                    }
                    MediaController.PhotoEntry photoEntryAtPosition = getPhotoEntryAtPosition(childAdapterPosition);
                    if (photoEntryAtPosition != null) {
                        photoAttachPhotoCell.setPhotoEntry(photoEntryAtPosition, this.adapter.needCamera && this.selectedAlbumEntry == this.galleryAlbumEntry, childAdapterPosition == this.adapter.getItemCount() - 1);
                        ChatAttachAlert chatAttachAlert = this.parentAlert;
                        if ((chatAttachAlert.baseFragment instanceof ChatActivity) && chatAttachAlert.allowOrder) {
                            photoAttachPhotoCell.setChecked(selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId)), selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), false);
                        } else {
                            photoAttachPhotoCell.setChecked(-1, selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), false);
                        }
                    }
                }
            }
        }
    }

    private boolean isNoGalleryPermissions() {
        Activity findActivity = AndroidUtilities.findActivity(getContext());
        if (findActivity == null) {
            findActivity = this.parentAlert.baseFragment.getParentActivity();
        }
        int i = Build.VERSION.SDK_INT;
        return i >= 23 && (findActivity == null || ((i >= 33 && !(findActivity.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0 && findActivity.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") == 0)) || (i < 33 && findActivity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0)));
    }

    public void checkStorage() {
        if (!this.noGalleryPermissions || Build.VERSION.SDK_INT < 23) {
            return;
        }
        this.parentAlert.baseFragment.getParentActivity();
        boolean isNoGalleryPermissions = isNoGalleryPermissions();
        this.noGalleryPermissions = isNoGalleryPermissions;
        if (!isNoGalleryPermissions) {
            loadGalleryPhotos();
        }
        this.adapter.notifyDataSetChanged();
        this.cameraAttachAdapter.notifyDataSetChanged();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.gridView.smoothScrollToPosition(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
        if (((org.telegram.p043ui.ChatActivity) r10).isInScheduleMode() != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
        if (((org.telegram.p043ui.ChatActivity) r10).isTemplatesChannel(true, true) != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0075, code lost:
        org.telegram.p043ui.Components.AlertsCreator.createScheduleDatePickerDialog(getContext(), ((org.telegram.p043ui.ChatActivity) r9.parentAlert.baseFragment).getDialogId(), new org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda20(r9), r9.resourcesProvider, (org.telegram.p043ui.ChatActivity) r9.parentAlert.baseFragment);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bf, code lost:
        if (((org.telegram.p043ui.ChatActivity) r10).isInScheduleMode() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d3, code lost:
        if (((org.telegram.p043ui.ChatActivity) r10).isTemplatesChannel(true, true) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d5, code lost:
        org.telegram.p043ui.Components.AlertsCreator.createScheduleDatePickerDialog(getContext(), ((org.telegram.p043ui.ChatActivity) r9.parentAlert.baseFragment).getDialogId(), new org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda19(r9), r9.resourcesProvider, (org.telegram.p043ui.ChatActivity) r9.parentAlert.baseFragment);
     */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMenuItemClick(int r10) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.onMenuItemClick(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$18(boolean z, int i, String str) {
        this.parentAlert.applyCaption();
        this.parentAlert.delegate.didPressedButton(7, false, z, i, false, str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$19(boolean z, int i, String str) {
        this.parentAlert.applyCaption();
        this.parentAlert.delegate.didPressedButton(4, true, z, i, false, str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuItemClick$20(boolean z) {
        this.spoilerItem.setText(LocaleController.getString(z ? C3632R.string.DisablePhotoSpoiler : C3632R.string.EnablePhotoSpoiler));
        if (z) {
            this.spoilerItem.setIcon(C3632R.C3634drawable.msg_spoiler_off);
        } else {
            this.spoilerItem.setAnimatedIcon(C3632R.raw.photo_spoiler);
        }
        if (z) {
            this.parentAlert.selectedMenuItem.hideSubItem(1);
        } else {
            this.parentAlert.selectedMenuItem.showSubItem(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onMenuItemClick$21(List list, boolean z, View view) {
        if (view instanceof PhotoAttachPhotoCell) {
            PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) view;
            MediaController.PhotoEntry photoEntry = photoAttachPhotoCell.getPhotoEntry();
            photoAttachPhotoCell.setHasSpoiler(photoEntry != null && list.contains(Integer.valueOf(photoEntry.imageId)) && z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getSelectedItemsCount() {
        return selectedPhotosOrder.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a5, code lost:
        if (((org.telegram.p043ui.ChatActivity) r6).isSecretChat() != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void onSelectedItemsCountChanged(int r6) {
        /*
            r5 = this;
            r0 = 3
            r1 = 0
            r2 = 1
            if (r6 <= r2) goto L25
            org.telegram.ui.Components.ChatAttachAlert r3 = r5.parentAlert
            org.telegram.messenger.MessageObject r4 = r3.editingMessageObject
            if (r4 == 0) goto Lc
            goto L25
        Lc:
            org.telegram.ui.ActionBar.ActionBarMenuItem r3 = r3.selectedMenuItem
            r3.showSubItem(r1)
            boolean r1 = r5.documentsEnabled
            if (r1 == 0) goto L1d
            org.telegram.ui.Components.ChatAttachAlert r1 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r1 = r1.selectedMenuItem
            r1.showSubItem(r2)
            goto L50
        L1d:
            org.telegram.ui.Components.ChatAttachAlert r1 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r1 = r1.selectedMenuItem
            r1.hideSubItem(r2)
            goto L50
        L25:
            org.telegram.ui.Components.ChatAttachAlert r3 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r3 = r3.selectedMenuItem
            r3.hideSubItem(r1)
            if (r6 != 0) goto L3d
            org.telegram.ui.Components.ChatAttachAlert r1 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r1 = r1.selectedMenuItem
            r1.showSubItem(r0)
            org.telegram.ui.Components.ChatAttachAlert r1 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r1 = r1.selectedMenuItem
            r1.hideSubItem(r2)
            goto L50
        L3d:
            boolean r1 = r5.documentsEnabled
            if (r1 == 0) goto L49
            org.telegram.ui.Components.ChatAttachAlert r1 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r1 = r1.selectedMenuItem
            r1.showSubItem(r2)
            goto L50
        L49:
            org.telegram.ui.Components.ChatAttachAlert r1 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r1 = r1.selectedMenuItem
            r1.hideSubItem(r2)
        L50:
            if (r6 == 0) goto L59
            org.telegram.ui.Components.ChatAttachAlert r1 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r1 = r1.selectedMenuItem
            r1.hideSubItem(r0)
        L59:
            r0 = 5
            r1 = 4
            if (r6 <= r2) goto L77
            org.telegram.ui.Components.ChatAttachAlert r2 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r2 = r2.selectedMenuItem
            r2.showSubItem(r1)
            org.telegram.ui.Components.ChatAttachAlert r1 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r1 = r1.selectedMenuItem
            r1.showSubItem(r0)
            org.telegram.ui.ActionBar.ActionBarMenuSubItem r0 = r5.compressItem
            int r1 = org.telegram.messenger.C3632R.string.SendAsFiles
            java.lang.String r1 = org.telegram.messenger.LocaleController.getString(r1)
            r0.setText(r1)
            goto L92
        L77:
            org.telegram.ui.Components.ChatAttachAlert r2 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r2 = r2.selectedMenuItem
            r2.hideSubItem(r1)
            org.telegram.ui.Components.ChatAttachAlert r1 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r1 = r1.selectedMenuItem
            r1.hideSubItem(r0)
            if (r6 == 0) goto L92
            org.telegram.ui.ActionBar.ActionBarMenuSubItem r0 = r5.compressItem
            int r1 = org.telegram.messenger.C3632R.string.SendAsFile
            java.lang.String r1 = org.telegram.messenger.LocaleController.getString(r1)
            r0.setText(r1)
        L92:
            r0 = 2
            if (r6 == 0) goto Lb0
            org.telegram.ui.Components.ChatAttachAlert r6 = r5.parentAlert
            if (r6 == 0) goto La8
            org.telegram.ui.ActionBar.BaseFragment r6 = r6.baseFragment
            boolean r1 = r6 instanceof org.telegram.p043ui.ChatActivity
            if (r1 == 0) goto La8
            org.telegram.ui.ChatActivity r6 = (org.telegram.p043ui.ChatActivity) r6
            boolean r6 = r6.isSecretChat()
            if (r6 == 0) goto La8
            goto Lb0
        La8:
            org.telegram.ui.Components.ChatAttachAlert r6 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r6 = r6.selectedMenuItem
            r6.showSubItem(r0)
            goto Lc9
        Lb0:
            org.telegram.ui.ActionBar.ActionBarMenuSubItem r6 = r5.spoilerItem
            int r1 = org.telegram.messenger.C3632R.string.EnablePhotoSpoiler
            java.lang.String r1 = org.telegram.messenger.LocaleController.getString(r1)
            r6.setText(r1)
            org.telegram.ui.ActionBar.ActionBarMenuSubItem r6 = r5.spoilerItem
            int r1 = org.telegram.messenger.C3632R.raw.photo_spoiler
            r6.setAnimatedIcon(r1)
            org.telegram.ui.Components.ChatAttachAlert r6 = r5.parentAlert
            org.telegram.ui.ActionBar.ActionBarMenuItem r6 = r6.selectedMenuItem
            r6.hideSubItem(r0)
        Lc9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.onSelectedItemsCountChanged(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void applyCaption(CharSequence charSequence) {
        MediaController.PhotoEntry photoEntry;
        for (int i = 0; i < selectedPhotosOrder.size(); i++) {
            if (i == 0) {
                Object obj = selectedPhotosOrder.get(i);
                Object obj2 = selectedPhotos.get(obj);
                if (obj2 instanceof MediaController.PhotoEntry) {
                    MediaController.PhotoEntry clone = ((MediaController.PhotoEntry) obj2).clone();
                    CharSequence[] charSequenceArr = {charSequence};
                    clone.entities = MediaDataController.getInstance(UserConfig.selectedAccount).getEntities(charSequenceArr, false);
                    clone.caption = charSequenceArr[0];
                    photoEntry = clone;
                } else {
                    boolean z = obj2 instanceof MediaController.SearchImage;
                    photoEntry = obj2;
                    if (z) {
                        MediaController.SearchImage clone2 = ((MediaController.SearchImage) obj2).clone();
                        CharSequence[] charSequenceArr2 = {charSequence};
                        clone2.entities = MediaDataController.getInstance(UserConfig.selectedAccount).getEntities(charSequenceArr2, false);
                        clone2.caption = charSequenceArr2[0];
                        photoEntry = clone2;
                    }
                }
                selectedPhotos.put(obj, photoEntry);
            }
        }
    }

    public boolean captionForAllMedia() {
        int i = 0;
        for (int i2 = 0; i2 < selectedPhotosOrder.size(); i2++) {
            Object obj = selectedPhotos.get(selectedPhotosOrder.get(i2));
            CharSequence charSequence = null;
            if (obj instanceof MediaController.PhotoEntry) {
                charSequence = ((MediaController.PhotoEntry) obj).caption;
            } else if (obj instanceof MediaController.SearchImage) {
                charSequence = ((MediaController.SearchImage) obj).caption;
            }
            if (!TextUtils.isEmpty(charSequence)) {
                i++;
            }
        }
        return i <= 1;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.cameraInitied);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.albumsDidLoad);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    void onPause() {
        ShutterButton shutterButton = this.shutterButton;
        if (shutterButton == null) {
            return;
        }
        if (!this.requestingPermissions) {
            if (this.cameraView != null && shutterButton.getState() == ShutterButton.State.RECORDING) {
                resetRecordState();
                CameraController.getInstance().stopVideoRecording(this.cameraView.getCameraSession(), false);
                this.shutterButton.setState(ShutterButton.State.DEFAULT, true);
            }
            if (this.cameraOpened) {
                closeCamera(false);
            }
            hideCamera(true);
            return;
        }
        if (this.cameraView != null && shutterButton.getState() == ShutterButton.State.RECORDING) {
            this.shutterButton.setState(ShutterButton.State.DEFAULT, true);
        }
        this.requestingPermissions = false;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onResume() {
        if (!this.parentAlert.isShowing() || this.parentAlert.isDismissed() || PhotoViewer.getInstance().isVisible()) {
            return;
        }
        checkCamera(false);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.gridView.getPaddingTop();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        if (this.gridView.getChildCount() <= 0) {
            RecyclerListView recyclerListView = this.gridView;
            recyclerListView.setTopGlowOffset(recyclerListView.getPaddingTop());
            this.progressView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            return Integer.MAX_VALUE;
        }
        View childAt = this.gridView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.gridView.findContainingViewHolder(childAt);
        int top = childAt.getTop();
        int m107dp = AndroidUtilities.m107dp(7);
        if (top < AndroidUtilities.m107dp(7) || holder == null || holder.getAdapterPosition() != 0) {
            top = m107dp;
        }
        this.progressView.setTranslationY(((((getMeasuredHeight() - top) - AndroidUtilities.m107dp(50)) - this.progressView.getMeasuredHeight()) / 2) + top);
        this.gridView.setTopGlowOffset(top);
        return top;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m107dp(56);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    void checkColors() {
        FrameLayout frameLayout = this.cameraIcon;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
        int i = this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_dialogTextBlack;
        Drawable drawable = this.cameraDrawable;
        int i2 = Theme.key_dialogCameraIcon;
        Theme.setDrawableColor(drawable, getThemedColor(i2));
        this.progressView.setTextColor(getThemedColor(Theme.key_emptyListPlaceholder));
        this.gridView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.gridView.findViewHolderForAdapterPosition(0);
        if (findViewHolderForAdapterPosition != null) {
            View view = findViewHolderForAdapterPosition.itemView;
            if (view instanceof PhotoAttachCameraCell) {
                ((PhotoAttachCameraCell) view).getImageView().setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
            }
        }
        this.dropDown.setTextColor(getThemedColor(i));
        this.dropDownContainer.setPopupItemsColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_actionBarDefaultSubmenuItem), false);
        this.dropDownContainer.setPopupItemsColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_actionBarDefaultSubmenuItem), true);
        this.dropDownContainer.redrawPopup(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarUnscrolled : Theme.key_actionBarDefaultSubmenuBackground));
        Theme.setDrawableColor(this.dropDownDrawable, getThemedColor(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onInit(boolean z, boolean z2, boolean z3) {
        boolean z4 = z || z2;
        this.mediaEnabled = z4;
        this.videoEnabled = z;
        this.photoEnabled = z2;
        this.documentsEnabled = z3;
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.setAlpha(z4 ? 1.0f : 0.2f);
            this.cameraView.setEnabled(this.mediaEnabled);
        }
        FrameLayout frameLayout = this.cameraIcon;
        if (frameLayout != null) {
            frameLayout.setAlpha(this.mediaEnabled ? 1.0f : 0.2f);
            this.cameraIcon.setEnabled(this.mediaEnabled);
        }
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        BaseFragment baseFragment = chatAttachAlert.baseFragment;
        if ((baseFragment instanceof ChatActivity) && chatAttachAlert.avatarPicker == 0) {
            this.galleryAlbumEntry = MediaController.allMediaAlbumEntry;
            if (this.mediaEnabled) {
                this.progressView.setText(LocaleController.getString("NoPhotos", C3632R.string.NoPhotos));
                this.progressView.setLottie(0, 0, 0);
            } else {
                TLRPC$Chat currentChat = ((ChatActivity) baseFragment).getCurrentChat();
                this.progressView.setLottie(C3632R.raw.media_forbidden, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                if (ChatObject.isActionBannedByDefault(currentChat, 7)) {
                    this.progressView.setText(LocaleController.getString("GlobalAttachMediaRestricted", C3632R.string.GlobalAttachMediaRestricted));
                } else if (AndroidUtilities.isBannedForever(currentChat.banned_rights)) {
                    this.progressView.setText(LocaleController.formatString("AttachMediaRestrictedForever", C3632R.string.AttachMediaRestrictedForever, new Object[0]));
                } else {
                    this.progressView.setText(LocaleController.formatString("AttachMediaRestricted", C3632R.string.AttachMediaRestricted, LocaleController.formatDateForBan(currentChat.banned_rights.until_date)));
                }
            }
        } else if (shouldLoadAllMedia()) {
            this.galleryAlbumEntry = MediaController.allMediaAlbumEntry;
        } else {
            this.galleryAlbumEntry = MediaController.allPhotosAlbumEntry;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            this.noGalleryPermissions = isNoGalleryPermissions();
        }
        if (this.galleryAlbumEntry != null) {
            for (int i = 0; i < Math.min(100, this.galleryAlbumEntry.photos.size()); i++) {
                this.galleryAlbumEntry.photos.get(i).reset();
            }
        }
        clearSelectedPhotos();
        updatePhotosCounter(false);
        this.cameraPhotoLayoutManager.scrollToPositionWithOffset(0, 1000000);
        this.layoutManager.scrollToPositionWithOffset(0, 1000000);
        this.dropDown.setText(LocaleController.getString("ChatGallery", C3632R.string.ChatGallery));
        MediaController.AlbumEntry albumEntry = this.galleryAlbumEntry;
        this.selectedAlbumEntry = albumEntry;
        if (albumEntry != null) {
            this.loading = false;
            EmptyTextProgressView emptyTextProgressView = this.progressView;
            if (emptyTextProgressView != null) {
                emptyTextProgressView.showTextView();
            }
        }
        updateAlbumsDropDown();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    boolean canScheduleMessages() {
        boolean z;
        for (Map.Entry<Object, Object> entry : selectedPhotos.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof MediaController.PhotoEntry) {
                if (((MediaController.PhotoEntry) value).ttl != 0) {
                    z = true;
                    break;
                }
            } else if ((value instanceof MediaController.SearchImage) && ((MediaController.SearchImage) value).ttl != 0) {
                z = true;
                break;
            }
        }
        z = false;
        return !z;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    void onButtonsTranslationYUpdated() {
        checkCameraViewPosition();
        invalidate();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        if (this.parentAlert.getSheetAnimationType() == 1) {
            float f2 = (f / 40.0f) * (-0.1f);
            int childCount = this.gridView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachCameraCell) {
                    PhotoAttachCameraCell photoAttachCameraCell = (PhotoAttachCameraCell) childAt;
                    float f3 = 1.0f + f2;
                    photoAttachCameraCell.getImageView().setScaleX(f3);
                    photoAttachCameraCell.getImageView().setScaleY(f3);
                } else if (childAt instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    float f4 = 1.0f + f2;
                    photoAttachPhotoCell.getCheckBox().setScaleX(f4);
                    photoAttachPhotoCell.getCheckBox().setScaleY(f4);
                }
            }
        }
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
        invalidate();
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(final ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        ViewPropertyAnimator viewPropertyAnimator = this.headerAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        this.dropDownContainer.setVisibility(0);
        boolean z = attachAlertLayout instanceof ChatAttachAlertPhotoLayoutPreview;
        if (!z) {
            onSelectedItemsCountChanged(0);
            clearSelectedPhotos();
            this.dropDown.setAlpha(1.0f);
        } else {
            ViewPropertyAnimator interpolator = this.dropDown.animate().alpha(1.0f).setDuration(150L).setInterpolator(CubicBezierInterpolator.EASE_BOTH);
            this.headerAnimator = interpolator;
            interpolator.start();
        }
        this.parentAlert.actionBar.setTitle("");
        this.layoutManager.scrollToPositionWithOffset(0, 0);
        if (z) {
            this.gridView.post(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlertPhotoLayout.this.lambda$onShow$22(attachAlertLayout);
                }
            });
        }
        checkCameraViewPosition();
        resumeCameraPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onShow$22(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        int currentItemTop = attachAlertLayout.getCurrentItemTop();
        int listTopPadding = attachAlertLayout.getListTopPadding();
        RecyclerListView recyclerListView = this.gridView;
        if (currentItemTop > AndroidUtilities.m107dp(8)) {
            listTopPadding -= currentItemTop;
        }
        recyclerListView.scrollBy(0, listTopPadding);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    void onShown() {
        this.isHidden = false;
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.setVisibility(0);
        }
        FrameLayout frameLayout = this.cameraIcon;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        if (this.cameraView != null) {
            int childCount = this.gridView.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = this.gridView.getChildAt(i);
                if (childAt instanceof PhotoAttachCameraCell) {
                    childAt.setVisibility(4);
                    break;
                }
                i++;
            }
        }
        if (this.checkCameraWhenShown) {
            this.checkCameraWhenShown = false;
            checkCamera(true);
        }
    }

    public void setCheckCameraWhenShown(boolean z) {
        this.checkCameraWhenShown = z;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    void onHideShowProgress(float f) {
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.setAlpha(f);
            this.cameraIcon.setAlpha(f);
            int i = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            if (i != 0 && this.cameraView.getVisibility() != 0) {
                this.cameraView.setVisibility(0);
                this.cameraIcon.setVisibility(0);
            } else if (i != 0 || this.cameraView.getVisibility() == 4) {
            } else {
                this.cameraView.setVisibility(4);
                this.cameraIcon.setVisibility(4);
            }
        }
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        this.isHidden = true;
        int childCount = this.gridView.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = this.gridView.getChildAt(i);
            if (childAt instanceof PhotoAttachCameraCell) {
                childAt.setVisibility(0);
                saveLastCameraBitmap();
                ((PhotoAttachCameraCell) childAt).updateBitmap();
                break;
            }
            i++;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.headerAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        ViewPropertyAnimator withEndAction = this.dropDown.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(CubicBezierInterpolator.EASE_BOTH).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                ChatAttachAlertPhotoLayout.this.lambda$onHide$23();
            }
        });
        this.headerAnimator = withEndAction;
        withEndAction.start();
        pauseCameraPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onHide$23() {
        this.dropDownContainer.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseCameraPreview() {
        CameraSession cameraSession;
        try {
            CameraView cameraView = this.cameraView;
            if (cameraView == null || (cameraSession = cameraView.getCameraSession()) == null) {
                return;
            }
            CameraController.getInstance().stopPreview(cameraSession);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeCameraPreview() {
        CameraSession cameraSession;
        try {
            checkCamera(false);
            CameraView cameraView = this.cameraView;
            if (cameraView == null || (cameraSession = cameraView.getCameraSession()) == null) {
                return;
            }
            CameraController.getInstance().startPreview(cameraSession);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPhotoEditModeChanged(boolean z) {
        if (!this.needCamera || this.noCameraPermissions) {
            return;
        }
        if (z) {
            CameraView cameraView = this.cameraView;
            if (cameraView != null) {
                this.isCameraFrontfaceBeforeEnteringEditMode = Boolean.valueOf(cameraView.isFrontface());
                hideCamera(true);
                return;
            }
            return;
        }
        this.afterCameraInitRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ChatAttachAlertPhotoLayout.this.lambda$onPhotoEditModeChanged$24();
            }
        };
        showCamera();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPhotoEditModeChanged$24() {
        pauseCameraPreview();
        this.afterCameraInitRunnable = null;
        this.isCameraFrontfaceBeforeEnteringEditMode = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHidden() {
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.setVisibility(8);
            this.cameraIcon.setVisibility(8);
        }
        for (Map.Entry<Object, Object> entry : selectedPhotos.entrySet()) {
            if (entry.getValue() instanceof MediaController.PhotoEntry) {
                ((MediaController.PhotoEntry) entry.getValue()).isAttachSpoilerRevealed = false;
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        if (this.lastNotifyWidth != i5) {
            this.lastNotifyWidth = i5;
            PhotoAttachAdapter photoAttachAdapter = this.adapter;
            if (photoAttachAdapter != null) {
                photoAttachAdapter.notifyDataSetChanged();
            }
        }
        super.onLayout(z, i, i2, i3, i4);
        checkCameraViewPosition();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00df  */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPreMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachAlertPhotoLayout.onPreMeasure(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPreMeasure$25() {
        this.adapter.notifyDataSetChanged();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    boolean canDismissWithTouchOutside() {
        return !this.cameraOpened;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPanTransitionStart(boolean z, int i) {
        super.onPanTransitionStart(z, i);
        checkCameraViewPosition();
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                cameraView.invalidateOutline();
            } else {
                cameraView.invalidate();
            }
        }
        FrameLayout frameLayout = this.cameraIcon;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onContainerTranslationUpdated(float f) {
        this.currentPanTranslationY = f;
        checkCameraViewPosition();
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                cameraView.invalidateOutline();
            } else {
                cameraView.invalidate();
            }
        }
        FrameLayout frameLayout = this.cameraIcon;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
        invalidate();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    void onOpenAnimationEnd() {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        checkCamera(chatAttachAlert != null && (chatAttachAlert.baseFragment instanceof ChatActivity));
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    void onDismissWithButtonClick(int i) {
        hideCamera((i == 0 || i == 2) ? false : true);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onDismiss() {
        if (this.cameraAnimationInProgress) {
            return true;
        }
        if (this.cameraOpened) {
            closeCamera(true);
            return true;
        }
        hideCamera(true);
        return false;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onSheetKeyDown(int i, KeyEvent keyEvent) {
        if (this.cameraOpened) {
            if (i == 24 || i == 25 || i == 79 || i == 85) {
                this.shutterButton.getDelegate().shutterReleased();
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onContainerViewTouchEvent(MotionEvent motionEvent) {
        if (this.cameraAnimationInProgress) {
            return true;
        }
        if (this.cameraOpened) {
            return processTouchEvent(motionEvent);
        }
        return false;
    }

    public boolean onCustomMeasure(View view, int i, int i2) {
        boolean z = i < i2;
        FrameLayout frameLayout = this.cameraIcon;
        if (view == frameLayout) {
            frameLayout.measure(View.MeasureSpec.makeMeasureSpec(this.itemSize, 1073741824), View.MeasureSpec.makeMeasureSpec((int) ((this.itemSize - this.cameraViewOffsetBottomY) - this.cameraViewOffsetY), 1073741824));
            return true;
        }
        CameraView cameraView = this.cameraView;
        if (view == cameraView) {
            if (this.cameraOpened && !this.cameraAnimationInProgress) {
                cameraView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2 + this.parentAlert.getBottomInset(), 1073741824));
                return true;
            }
        } else {
            FrameLayout frameLayout2 = this.cameraPanel;
            if (view == frameLayout2) {
                if (z) {
                    frameLayout2.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(126), 1073741824));
                } else {
                    frameLayout2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(126), 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
                }
                return true;
            }
            ZoomControlView zoomControlView = this.zoomControlView;
            if (view == zoomControlView) {
                if (z) {
                    zoomControlView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), 1073741824));
                } else {
                    zoomControlView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
                }
                return true;
            }
            RecyclerListView recyclerListView = this.cameraPhotoRecyclerView;
            if (view == recyclerListView) {
                this.cameraPhotoRecyclerViewIgnoreLayout = true;
                if (z) {
                    recyclerListView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(80), 1073741824));
                    if (this.cameraPhotoLayoutManager.getOrientation() != 0) {
                        this.cameraPhotoRecyclerView.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
                        this.cameraPhotoLayoutManager.setOrientation(0);
                        this.cameraAttachAdapter.notifyDataSetChanged();
                    }
                } else {
                    recyclerListView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(80), 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
                    if (this.cameraPhotoLayoutManager.getOrientation() != 1) {
                        this.cameraPhotoRecyclerView.setPadding(0, AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8));
                        this.cameraPhotoLayoutManager.setOrientation(1);
                        this.cameraAttachAdapter.notifyDataSetChanged();
                    }
                }
                this.cameraPhotoRecyclerViewIgnoreLayout = false;
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean onCustomLayout(View view, int i, int i2, int i3, int i4) {
        int m107dp;
        int measuredWidth;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        boolean z = i5 < i6;
        if (view == this.cameraPanel) {
            if (z) {
                if (this.cameraPhotoRecyclerView.getVisibility() == 0) {
                    this.cameraPanel.layout(0, i4 - AndroidUtilities.m107dp(222), i5, i4 - AndroidUtilities.m107dp(96));
                } else {
                    this.cameraPanel.layout(0, i4 - AndroidUtilities.m107dp(126), i5, i4);
                }
            } else if (this.cameraPhotoRecyclerView.getVisibility() == 0) {
                this.cameraPanel.layout(i3 - AndroidUtilities.m107dp(222), 0, i3 - AndroidUtilities.m107dp(96), i6);
            } else {
                this.cameraPanel.layout(i3 - AndroidUtilities.m107dp(126), 0, i3, i6);
            }
            return true;
        } else if (view == this.zoomControlView) {
            if (z) {
                if (this.cameraPhotoRecyclerView.getVisibility() == 0) {
                    this.zoomControlView.layout(0, i4 - AndroidUtilities.m107dp(310), i5, i4 - AndroidUtilities.m107dp(260));
                } else {
                    this.zoomControlView.layout(0, i4 - AndroidUtilities.m107dp(176), i5, i4 - AndroidUtilities.m107dp(126));
                }
            } else if (this.cameraPhotoRecyclerView.getVisibility() == 0) {
                this.zoomControlView.layout(i3 - AndroidUtilities.m107dp(310), 0, i3 - AndroidUtilities.m107dp(260), i6);
            } else {
                this.zoomControlView.layout(i3 - AndroidUtilities.m107dp(176), 0, i3 - AndroidUtilities.m107dp(126), i6);
            }
            return true;
        } else {
            TextView textView = this.counterTextView;
            if (view == textView) {
                if (z) {
                    m107dp = (i5 - textView.getMeasuredWidth()) / 2;
                    measuredWidth = i4 - AndroidUtilities.m107dp(167);
                    this.counterTextView.setRotation(BitmapDescriptorFactory.HUE_RED);
                    if (this.cameraPhotoRecyclerView.getVisibility() == 0) {
                        measuredWidth -= AndroidUtilities.m107dp(96);
                    }
                } else {
                    m107dp = i3 - AndroidUtilities.m107dp(167);
                    measuredWidth = (i6 / 2) + (this.counterTextView.getMeasuredWidth() / 2);
                    this.counterTextView.setRotation(-90.0f);
                    if (this.cameraPhotoRecyclerView.getVisibility() == 0) {
                        m107dp -= AndroidUtilities.m107dp(96);
                    }
                }
                TextView textView2 = this.counterTextView;
                textView2.layout(m107dp, measuredWidth, textView2.getMeasuredWidth() + m107dp, this.counterTextView.getMeasuredHeight() + measuredWidth);
                return true;
            } else if (view == this.cameraPhotoRecyclerView) {
                if (z) {
                    int m107dp2 = i6 - AndroidUtilities.m107dp(88);
                    view.layout(0, m107dp2, view.getMeasuredWidth(), view.getMeasuredHeight() + m107dp2);
                } else {
                    int m107dp3 = (i + i5) - AndroidUtilities.m107dp(88);
                    view.layout(m107dp3, 0, view.getMeasuredWidth() + m107dp3, view.getMeasuredHeight());
                }
                return true;
            } else {
                return false;
            }
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.albumsDidLoad) {
            if (this.adapter != null) {
                if (shouldLoadAllMedia()) {
                    this.galleryAlbumEntry = MediaController.allMediaAlbumEntry;
                } else {
                    this.galleryAlbumEntry = MediaController.allPhotosAlbumEntry;
                }
                if (this.selectedAlbumEntry == null) {
                    this.selectedAlbumEntry = this.galleryAlbumEntry;
                } else if (shouldLoadAllMedia()) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= MediaController.allMediaAlbums.size()) {
                            break;
                        }
                        MediaController.AlbumEntry albumEntry = MediaController.allMediaAlbums.get(i3);
                        int i4 = albumEntry.bucketId;
                        MediaController.AlbumEntry albumEntry2 = this.selectedAlbumEntry;
                        if (i4 == albumEntry2.bucketId && albumEntry.videoOnly == albumEntry2.videoOnly) {
                            this.selectedAlbumEntry = albumEntry;
                            break;
                        }
                        i3++;
                    }
                }
                this.loading = false;
                this.progressView.showTextView();
                this.adapter.notifyDataSetChanged();
                this.cameraAttachAdapter.notifyDataSetChanged();
                if (!selectedPhotosOrder.isEmpty() && this.galleryAlbumEntry != null) {
                    int size = selectedPhotosOrder.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        Integer num = (Integer) selectedPhotosOrder.get(i5);
                        Object obj = selectedPhotos.get(num);
                        MediaController.PhotoEntry photoEntry = this.galleryAlbumEntry.photosByIds.get(num.intValue());
                        if (photoEntry != null) {
                            if (obj instanceof MediaController.PhotoEntry) {
                                photoEntry.copyFrom((MediaController.PhotoEntry) obj);
                            }
                            selectedPhotos.put(num, photoEntry);
                        }
                    }
                }
                updateAlbumsDropDown();
            }
        } else if (i == NotificationCenter.cameraInitied) {
            checkCamera(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$PhotoAttachAdapter */
    /* loaded from: classes6.dex */
    public class PhotoAttachAdapter extends RecyclerListView.FastScrollAdapter {
        private int itemsCount;
        private Context mContext;
        private boolean needCamera;
        private int photosStartRow;
        private ArrayList<RecyclerListView.Holder> viewsCache = new ArrayList<>(8);

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public PhotoAttachAdapter(Context context, boolean z) {
            this.mContext = context;
            this.needCamera = z;
        }

        public void createCache() {
            for (int i = 0; i < 8; i++) {
                this.viewsCache.add(createHolder());
            }
        }

        public RecyclerListView.Holder createHolder() {
            final PhotoAttachPhotoCell photoAttachPhotoCell = new PhotoAttachPhotoCell(this.mContext, ChatAttachAlertPhotoLayout.this.resourcesProvider);
            if (Build.VERSION.SDK_INT >= 21 && this == ChatAttachAlertPhotoLayout.this.adapter) {
                photoAttachPhotoCell.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.PhotoAttachAdapter.1
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        PhotoAttachPhotoCell photoAttachPhotoCell2 = (PhotoAttachPhotoCell) view;
                        if (photoAttachPhotoCell2.getTag() == null) {
                            return;
                        }
                        int intValue = ((Integer) photoAttachPhotoCell2.getTag()).intValue();
                        if (PhotoAttachAdapter.this.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry) {
                            intValue++;
                        }
                        if (ChatAttachAlertPhotoLayout.this.showAvatarConstructor) {
                            intValue++;
                        }
                        if (intValue != 0) {
                            if (intValue == ChatAttachAlertPhotoLayout.this.itemsPerRow - 1) {
                                int m108dp = AndroidUtilities.m108dp(ChatAttachAlertPhotoLayout.this.parentAlert.cornerRadius * 8.0f);
                                outline.setRoundRect(-m108dp, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + m108dp, m108dp);
                                return;
                            }
                            outline.setRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
                            return;
                        }
                        int m108dp2 = AndroidUtilities.m108dp(ChatAttachAlertPhotoLayout.this.parentAlert.cornerRadius * 8.0f);
                        outline.setRoundRect(0, 0, view.getMeasuredWidth() + m108dp2, view.getMeasuredHeight() + m108dp2, m108dp2);
                    }
                });
                photoAttachPhotoCell.setClipToOutline(true);
            }
            photoAttachPhotoCell.setDelegate(new PhotoAttachPhotoCell.PhotoAttachPhotoCellDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda0
                @Override // org.telegram.p043ui.Cells.PhotoAttachPhotoCell.PhotoAttachPhotoCellDelegate
                public final void onCheckClick(PhotoAttachPhotoCell photoAttachPhotoCell2) {
                    ChatAttachAlertPhotoLayout.PhotoAttachAdapter.this.lambda$createHolder$0(photoAttachPhotoCell, photoAttachPhotoCell2);
                }
            });
            return new RecyclerListView.Holder(photoAttachPhotoCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createHolder$0(PhotoAttachPhotoCell photoAttachPhotoCell, PhotoAttachPhotoCell photoAttachPhotoCell2) {
            TLRPC$Chat currentChat;
            if (ChatAttachAlertPhotoLayout.this.mediaEnabled && ChatAttachAlertPhotoLayout.this.parentAlert.avatarPicker == 0) {
                int intValue = ((Integer) photoAttachPhotoCell2.getTag()).intValue();
                MediaController.PhotoEntry photoEntry = photoAttachPhotoCell2.getPhotoEntry();
                if (ChatAttachAlertPhotoLayout.this.checkSendMediaEnabled(photoEntry)) {
                    return;
                }
                boolean z = !ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photoEntry.imageId));
                if (z && ChatAttachAlertPhotoLayout.this.parentAlert.maxSelectedPhotos >= 0) {
                    int size = ChatAttachAlertPhotoLayout.selectedPhotos.size();
                    ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
                    if (size >= chatAttachAlert.maxSelectedPhotos) {
                        if (chatAttachAlert.allowOrder) {
                            BaseFragment baseFragment = chatAttachAlert.baseFragment;
                            if (!(baseFragment instanceof ChatActivity) || (currentChat = ((ChatActivity) baseFragment).getCurrentChat()) == null || ChatObject.hasAdminRights(currentChat) || !currentChat.slowmode_enabled || ChatAttachAlertPhotoLayout.this.alertOnlyOnce == 2) {
                                return;
                            }
                            AlertsCreator.createSimpleAlert(ChatAttachAlertPhotoLayout.this.getContext(), LocaleController.getString("Slowmode", C3632R.string.Slowmode), LocaleController.getString("SlowmodeSelectSendError", C3632R.string.SlowmodeSelectSendError), ChatAttachAlertPhotoLayout.this.resourcesProvider).show();
                            if (ChatAttachAlertPhotoLayout.this.alertOnlyOnce == 1) {
                                ChatAttachAlertPhotoLayout.this.alertOnlyOnce = 2;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                int size2 = z ? ChatAttachAlertPhotoLayout.selectedPhotosOrder.size() : -1;
                ChatAttachAlert chatAttachAlert2 = ChatAttachAlertPhotoLayout.this.parentAlert;
                if ((chatAttachAlert2.baseFragment instanceof ChatActivity) && chatAttachAlert2.allowOrder) {
                    photoAttachPhotoCell2.setChecked(size2, z, true);
                } else {
                    photoAttachPhotoCell2.setChecked(-1, z, true);
                }
                ChatAttachAlertPhotoLayout.this.addToSelectedPhotos(photoEntry, intValue);
                if (this == ChatAttachAlertPhotoLayout.this.cameraAttachAdapter) {
                    if (ChatAttachAlertPhotoLayout.this.adapter.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry) {
                        intValue++;
                    }
                    ChatAttachAlertPhotoLayout.this.adapter.notifyItemChanged(intValue);
                } else {
                    ChatAttachAlertPhotoLayout.this.cameraAttachAdapter.notifyItemChanged(intValue);
                }
                ChatAttachAlertPhotoLayout.this.parentAlert.updateCountButton(z ? 1 : 2);
                photoAttachPhotoCell.setHasSpoiler(photoEntry.hasSpoiler);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MediaController.PhotoEntry getPhoto(int i) {
            if (this.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry) {
                i--;
            }
            return ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            int i2 = 0;
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType != 3) {
                        return;
                    }
                    PhotoAttachPermissionCell photoAttachPermissionCell = (PhotoAttachPermissionCell) viewHolder.itemView;
                    photoAttachPermissionCell.setItemSize(ChatAttachAlertPhotoLayout.this.itemSize);
                    if (!this.needCamera || !ChatAttachAlertPhotoLayout.this.noCameraPermissions || i != 0) {
                        i2 = 1;
                    }
                    photoAttachPermissionCell.setType(i2);
                    return;
                }
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = ChatAttachAlertPhotoLayout.this;
                chatAttachAlertPhotoLayout.cameraCell = (PhotoAttachCameraCell) viewHolder.itemView;
                CameraView cameraView = chatAttachAlertPhotoLayout.cameraView;
                if (cameraView != null && cameraView.isInited() && !ChatAttachAlertPhotoLayout.this.isHidden) {
                    ChatAttachAlertPhotoLayout.this.cameraCell.setVisibility(4);
                } else {
                    ChatAttachAlertPhotoLayout.this.cameraCell.setVisibility(0);
                }
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = ChatAttachAlertPhotoLayout.this;
                chatAttachAlertPhotoLayout2.cameraCell.setItemSize(chatAttachAlertPhotoLayout2.itemSize);
                return;
            }
            if (this.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry) {
                i--;
            }
            if (ChatAttachAlertPhotoLayout.this.showAvatarConstructor) {
                i--;
            }
            PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) viewHolder.itemView;
            if (this == ChatAttachAlertPhotoLayout.this.adapter) {
                photoAttachPhotoCell.setItemSize(ChatAttachAlertPhotoLayout.this.itemSize);
            } else {
                photoAttachPhotoCell.setIsVertical(ChatAttachAlertPhotoLayout.this.cameraPhotoLayoutManager.getOrientation() == 1);
            }
            if (ChatAttachAlertPhotoLayout.this.parentAlert.avatarPicker != 0) {
                photoAttachPhotoCell.getCheckBox().setVisibility(8);
            }
            MediaController.PhotoEntry photoEntryAtPosition = ChatAttachAlertPhotoLayout.this.getPhotoEntryAtPosition(i);
            if (photoEntryAtPosition == null) {
                return;
            }
            photoAttachPhotoCell.setPhotoEntry(photoEntryAtPosition, this.needCamera && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry, i == getItemCount() - 1);
            ChatAttachAlert chatAttachAlert = ChatAttachAlertPhotoLayout.this.parentAlert;
            if (!(chatAttachAlert.baseFragment instanceof ChatActivity) || !chatAttachAlert.allowOrder) {
                photoAttachPhotoCell.setChecked(-1, ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), false);
            } else {
                photoAttachPhotoCell.setChecked(ChatAttachAlertPhotoLayout.selectedPhotosOrder.indexOf(Integer.valueOf(photoEntryAtPosition.imageId)), ChatAttachAlertPhotoLayout.selectedPhotos.containsKey(Integer.valueOf(photoEntryAtPosition.imageId)), false);
            }
            if (ChatAttachAlertPhotoLayout.this.videoEnabled || !photoEntryAtPosition.isVideo) {
                if (!ChatAttachAlertPhotoLayout.this.photoEnabled && !photoEntryAtPosition.isVideo) {
                    photoAttachPhotoCell.setAlpha(0.3f);
                } else {
                    photoAttachPhotoCell.setAlpha(1.0f);
                }
            } else {
                photoAttachPhotoCell.setAlpha(0.3f);
            }
            photoAttachPhotoCell.getImageView().setTag(Integer.valueOf(i));
            photoAttachPhotoCell.setTag(Integer.valueOf(i));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                if (!this.viewsCache.isEmpty()) {
                    RecyclerListView.Holder holder = this.viewsCache.get(0);
                    this.viewsCache.remove(0);
                    return holder;
                }
                return createHolder();
            } else if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        return new RecyclerListView.Holder(new PhotoAttachPermissionCell(this.mContext, ChatAttachAlertPhotoLayout.this.resourcesProvider));
                    }
                    return new RecyclerListView.Holder(new AvatarConstructorPreviewCell(this.mContext, ChatAttachAlertPhotoLayout.this.parentAlert.forUser) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.PhotoAttachAdapter.4
                        @Override // org.telegram.p043ui.Components.AvatarConstructorPreviewCell, android.widget.FrameLayout, android.view.View
                        protected void onMeasure(int i2, int i3) {
                            super.onMeasure(View.MeasureSpec.makeMeasureSpec(ChatAttachAlertPhotoLayout.this.itemSize, 1073741824), View.MeasureSpec.makeMeasureSpec(ChatAttachAlertPhotoLayout.this.itemSize, 1073741824));
                        }
                    });
                }
                return new RecyclerListView.Holder(new View(this.mContext) { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.PhotoAttachAdapter.3
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824), View.MeasureSpec.makeMeasureSpec(ChatAttachAlertPhotoLayout.this.gridExtraSpace, 1073741824));
                    }
                });
            } else {
                ChatAttachAlertPhotoLayout.this.cameraCell = new PhotoAttachCameraCell(this.mContext, ChatAttachAlertPhotoLayout.this.resourcesProvider);
                if (Build.VERSION.SDK_INT >= 21) {
                    ChatAttachAlertPhotoLayout.this.cameraCell.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.ChatAttachAlertPhotoLayout.PhotoAttachAdapter.2
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            int m108dp = AndroidUtilities.m108dp(ChatAttachAlertPhotoLayout.this.parentAlert.cornerRadius * 8.0f);
                            outline.setRoundRect(0, 0, view.getMeasuredWidth() + m108dp, view.getMeasuredHeight() + m108dp, m108dp);
                        }
                    });
                    ChatAttachAlertPhotoLayout.this.cameraCell.setClipToOutline(true);
                }
                return new RecyclerListView.Holder(ChatAttachAlertPhotoLayout.this.cameraCell);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof PhotoAttachCameraCell) {
                ((PhotoAttachCameraCell) view).updateBitmap();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i = 1;
            if (ChatAttachAlertPhotoLayout.this.mediaEnabled) {
                if (!this.needCamera || ChatAttachAlertPhotoLayout.this.selectedAlbumEntry != ChatAttachAlertPhotoLayout.this.galleryAlbumEntry) {
                    i = 0;
                }
                if (ChatAttachAlertPhotoLayout.this.showAvatarConstructor) {
                    i++;
                }
                if (ChatAttachAlertPhotoLayout.this.noGalleryPermissions && this == ChatAttachAlertPhotoLayout.this.adapter) {
                    i++;
                }
                this.photosStartRow = i;
                int size = i + ChatAttachAlertPhotoLayout.cameraPhotos.size();
                if (ChatAttachAlertPhotoLayout.this.selectedAlbumEntry != null) {
                    size += ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.size();
                }
                if (this == ChatAttachAlertPhotoLayout.this.adapter) {
                    size++;
                }
                this.itemsCount = size;
                return size;
            }
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (ChatAttachAlertPhotoLayout.this.mediaEnabled) {
                if (this.needCamera && i == 0 && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == ChatAttachAlertPhotoLayout.this.galleryAlbumEntry) {
                    return ChatAttachAlertPhotoLayout.this.noCameraPermissions ? 3 : 1;
                }
                int i2 = this.needCamera ? i - 1 : i;
                if (ChatAttachAlertPhotoLayout.this.showAvatarConstructor && i2 == 0) {
                    return 4;
                }
                if (this == ChatAttachAlertPhotoLayout.this.adapter && i == this.itemsCount - 1) {
                    return 2;
                }
                return ChatAttachAlertPhotoLayout.this.noGalleryPermissions ? 3 : 0;
            }
            return 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            if (this == ChatAttachAlertPhotoLayout.this.adapter) {
                ChatAttachAlertPhotoLayout.this.progressView.setVisibility((!(getItemCount() == 1 && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == null) && ChatAttachAlertPhotoLayout.this.mediaEnabled) ? 4 : 0);
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public float getScrollProgress(RecyclerListView recyclerListView) {
            int i = ChatAttachAlertPhotoLayout.this.itemsPerRow;
            int ceil = (int) Math.ceil(this.itemsCount / i);
            if (recyclerListView.getChildCount() == 0) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            int measuredHeight = recyclerListView.getChildAt(0).getMeasuredHeight();
            View childAt = recyclerListView.getChildAt(0);
            int childAdapterPosition = recyclerListView.getChildAdapterPosition(childAt);
            if (childAdapterPosition < 0) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            return Utilities.clamp((((childAdapterPosition / i) * measuredHeight) - childAt.getTop()) / ((ceil * measuredHeight) - recyclerListView.getMeasuredHeight()), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            MediaController.PhotoEntry photo = getPhoto(i);
            if (photo == null) {
                if (i <= this.photosStartRow) {
                    if (!ChatAttachAlertPhotoLayout.cameraPhotos.isEmpty()) {
                        photo = (MediaController.PhotoEntry) ChatAttachAlertPhotoLayout.cameraPhotos.get(0);
                    } else if (ChatAttachAlertPhotoLayout.this.selectedAlbumEntry != null && ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos != null) {
                        photo = ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.get(0);
                    }
                } else if (!ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.isEmpty()) {
                    photo = ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.get(ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.size() - 1);
                }
            }
            if (photo != null) {
                long j = photo.dateTaken;
                if (Build.VERSION.SDK_INT <= 28) {
                    j /= 1000;
                }
                return LocaleController.formatYearMont(j, true);
            }
            return "";
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public boolean fastScrollIsVisible(RecyclerListView recyclerListView) {
            return !(ChatAttachAlertPhotoLayout.cameraPhotos.isEmpty() && (ChatAttachAlertPhotoLayout.this.selectedAlbumEntry == null || ChatAttachAlertPhotoLayout.this.selectedAlbumEntry.photos.isEmpty())) && ChatAttachAlertPhotoLayout.this.parentAlert.pinnedToTop && getTotalItemsCount() > 30;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            int measuredHeight;
            float ceil = f * (((int) (Math.ceil(getTotalItemsCount() / ChatAttachAlertPhotoLayout.this.itemsPerRow) * measuredHeight)) - recyclerListView.getMeasuredHeight());
            float measuredHeight2 = recyclerListView.getChildAt(0).getMeasuredHeight();
            iArr[0] = ((int) (ceil / measuredHeight2)) * ChatAttachAlertPhotoLayout.this.itemsPerRow;
            iArr[1] = ((int) (ceil % measuredHeight2)) + recyclerListView.getPaddingTop();
            if (iArr[0] != 0 || iArr[1] >= ChatAttachAlertPhotoLayout.this.getListTopPadding()) {
                return;
            }
            iArr[1] = ChatAttachAlertPhotoLayout.this.getListTopPadding();
        }
    }
}
