package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationBadge;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.DividerCell;
import org.telegram.p043ui.Cells.PhotoAttachPhotoCell;
import org.telegram.p043ui.Cells.SharedDocumentCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.EditTextCaption;
import org.telegram.p043ui.Components.EditTextEmoji;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadialProgressView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.RecyclerViewItemRangeSelector;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.StickerEmptyView;
import org.telegram.p043ui.PhotoPickerActivity;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername;
import org.telegram.tgnet.TLRPC$TL_contacts_resolvedPeer;
import org.telegram.tgnet.TLRPC$TL_documentAttributeImageSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_messages_getInlineBotResults;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$WebDocument;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* renamed from: org.telegram.ui.PhotoPickerActivity */
/* loaded from: classes5.dex */
public class PhotoPickerActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private int alertOnlyOnce;
    private boolean allowCaption;
    private boolean allowIndices;
    private boolean allowOrder;
    private AnimatorSet animatorSet;
    private CharSequence caption;
    private ChatActivity chatActivity;
    protected EditTextEmoji commentTextView;
    private PhotoPickerActivityDelegate delegate;
    private final int dialogBackgroundKey;
    private StickerEmptyView emptyView;
    private FlickerLoadingView flickerView;
    private final boolean forceDarckTheme;
    protected FrameLayout frameLayout2;
    private int imageReqId;
    private boolean imageSearchEndReached;
    private String initialSearchString;
    private boolean isDocumentsPicker;
    private ActionBarMenuSubItem[] itemCells;
    private RecyclerViewItemRangeSelector itemRangeSelector;
    private int itemSize;
    private int itemsPerRow;
    private String lastSearchImageString;
    private String lastSearchString;
    private int lastSearchToken;
    private GridLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private boolean listSort;
    private RecyclerListView listView;
    private int maxSelectedPhotos;
    private boolean needsBottomLayout;
    private String nextImagesSearchOffset;
    private Paint paint;
    private PhotoViewer.PhotoViewerProvider provider;
    private ArrayList<String> recentSearches;
    private RectF rect;
    private PhotoPickerActivitySearchDelegate searchDelegate;
    private ActionBarMenuItem searchItem;
    private ArrayList<MediaController.SearchImage> searchResult = new ArrayList<>();
    private HashMap<String, MediaController.SearchImage> searchResultKeys = new HashMap<>();
    private boolean searching;
    private boolean searchingUser;
    private int selectPhotoType;
    private MediaController.AlbumEntry selectedAlbum;
    protected View selectedCountView;
    private HashMap<Object, Object> selectedPhotos;
    private ArrayList<Object> selectedPhotosOrder;
    private final int selectorKey;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout sendPopupLayout;
    private ActionBarPopupWindow sendPopupWindow;
    private boolean sendPressed;
    protected View shadow;
    private boolean shouldSelect;
    private ActionBarMenuSubItem showAsListItem;
    private SizeNotifierFrameLayout sizeNotifierFrameLayout;
    private final int textKey;
    private TextPaint textPaint;
    private int type;
    private ImageView writeButton;
    protected FrameLayout writeButtonContainer;
    private Drawable writeButtonDrawable;

    /* renamed from: org.telegram.ui.PhotoPickerActivity$PhotoPickerActivityDelegate */
    /* loaded from: classes5.dex */
    public interface PhotoPickerActivityDelegate {

        /* renamed from: org.telegram.ui.PhotoPickerActivity$PhotoPickerActivityDelegate$-CC */
        /* loaded from: classes5.dex */
        public final /* synthetic */ class CC {
            public static boolean $default$canFinishFragment(PhotoPickerActivityDelegate photoPickerActivityDelegate) {
                return true;
            }

            public static void $default$onOpenInPressed(PhotoPickerActivityDelegate photoPickerActivityDelegate) {
            }
        }

        void actionButtonPressed(boolean z, boolean z2, int i, String str, boolean z3);

        boolean canFinishFragment();

        void onCaptionChanged(CharSequence charSequence);

        void onOpenInPressed();

        void selectedPhotosChanged();
    }

    /* renamed from: org.telegram.ui.PhotoPickerActivity$PhotoPickerActivitySearchDelegate */
    /* loaded from: classes5.dex */
    public interface PhotoPickerActivitySearchDelegate {
        void shouldClearRecentSearch();

        void shouldSearchText(String str);
    }

    public static /* synthetic */ boolean lambda$createView$3(View view, MotionEvent motionEvent) {
        return true;
    }

    private void sendSelectedPhotos(boolean z, int i) {
        sendSelectedPhotos(z, i, null, false);
    }

    public void sendSelectedPhotos(boolean z, int i, String str) {
        sendSelectedPhotos(z, i, str, false);
    }

    public PhotoPickerActivity(int i, MediaController.AlbumEntry albumEntry, HashMap<Object, Object> hashMap, ArrayList<Object> arrayList, int i2, boolean z, ChatActivity chatActivity, boolean z2) {
        new HashMap();
        this.recentSearches = new ArrayList<>();
        this.imageSearchEndReached = true;
        this.allowOrder = true;
        this.itemSize = 100;
        this.itemsPerRow = 3;
        this.textPaint = new TextPaint(1);
        this.rect = new RectF();
        this.paint = new Paint(1);
        this.needsBottomLayout = true;
        this.provider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.PhotoPickerActivity.1
            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public boolean scaleToFill() {
                return false;
            }

            {
                PhotoPickerActivity.this = this;
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i3, boolean z3) {
                PhotoAttachPhotoCell cellForIndex = PhotoPickerActivity.this.getCellForIndex(i3);
                if (cellForIndex != null) {
                    BackupImageView imageView = cellForIndex.getImageView();
                    int[] iArr = new int[2];
                    imageView.getLocationInWindow(iArr);
                    PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                    placeProviderObject.viewX = iArr[0];
                    placeProviderObject.viewY = iArr[1] - (Build.VERSION.SDK_INT >= 21 ? 0 : AndroidUtilities.statusBarHeight);
                    placeProviderObject.parentView = PhotoPickerActivity.this.listView;
                    ImageReceiver imageReceiver = imageView.getImageReceiver();
                    placeProviderObject.imageReceiver = imageReceiver;
                    placeProviderObject.thumb = imageReceiver.getBitmapSafe();
                    placeProviderObject.scale = cellForIndex.getScale();
                    cellForIndex.showCheck(false);
                    return placeProviderObject;
                }
                return null;
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public void updatePhotoAtIndex(int i3) {
                PhotoAttachPhotoCell cellForIndex = PhotoPickerActivity.this.getCellForIndex(i3);
                if (cellForIndex != null) {
                    if (PhotoPickerActivity.this.selectedAlbum == null) {
                        cellForIndex.setPhotoEntry((MediaController.SearchImage) PhotoPickerActivity.this.searchResult.get(i3), true, false);
                        return;
                    }
                    BackupImageView imageView = cellForIndex.getImageView();
                    imageView.setOrientation(0, true);
                    MediaController.PhotoEntry photoEntry = PhotoPickerActivity.this.selectedAlbum.photos.get(i3);
                    String str = photoEntry.thumbPath;
                    if (str != null) {
                        imageView.setImage(str, null, Theme.chat_attachEmptyDrawable);
                    } else if (photoEntry.path != null) {
                        imageView.setOrientation(photoEntry.orientation, photoEntry.invert, true);
                        if (photoEntry.isVideo) {
                            imageView.setImage("vthumb://" + photoEntry.imageId + ":" + photoEntry.path, null, Theme.chat_attachEmptyDrawable);
                            return;
                        }
                        imageView.setImage("thumb://" + photoEntry.imageId + ":" + photoEntry.path, null, Theme.chat_attachEmptyDrawable);
                    } else {
                        imageView.setImageDrawable(Theme.chat_attachEmptyDrawable);
                    }
                }
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public boolean allowCaption() {
                return PhotoPickerActivity.this.allowCaption;
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public ImageReceiver.BitmapHolder getThumbForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i3) {
                PhotoAttachPhotoCell cellForIndex = PhotoPickerActivity.this.getCellForIndex(i3);
                if (cellForIndex != null) {
                    return cellForIndex.getImageView().getImageReceiver().getBitmapSafe();
                }
                return null;
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public void willSwitchFromPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i3) {
                int childCount = PhotoPickerActivity.this.listView.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = PhotoPickerActivity.this.listView.getChildAt(i4);
                    if (childAt.getTag() != null) {
                        PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                        int intValue = ((Integer) childAt.getTag()).intValue();
                        if (PhotoPickerActivity.this.selectedAlbum == null ? !(intValue < 0 || intValue >= PhotoPickerActivity.this.searchResult.size()) : !(intValue < 0 || intValue >= PhotoPickerActivity.this.selectedAlbum.photos.size())) {
                            if (intValue == i3) {
                                photoAttachPhotoCell.showCheck(true);
                                return;
                            }
                        }
                    }
                }
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public void willHidePhotoViewer() {
                int childCount = PhotoPickerActivity.this.listView.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = PhotoPickerActivity.this.listView.getChildAt(i3);
                    if (childAt instanceof PhotoAttachPhotoCell) {
                        ((PhotoAttachPhotoCell) childAt).showCheck(true);
                    }
                }
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public boolean isPhotoChecked(int i3) {
                return PhotoPickerActivity.this.selectedAlbum != null ? i3 >= 0 && i3 < PhotoPickerActivity.this.selectedAlbum.photos.size() && PhotoPickerActivity.this.selectedPhotos.containsKey(Integer.valueOf(PhotoPickerActivity.this.selectedAlbum.photos.get(i3).imageId)) : i3 >= 0 && i3 < PhotoPickerActivity.this.searchResult.size() && PhotoPickerActivity.this.selectedPhotos.containsKey(((MediaController.SearchImage) PhotoPickerActivity.this.searchResult.get(i3)).f1533id);
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public int setPhotoUnchecked(Object obj) {
                Object obj2;
                if (obj instanceof MediaController.PhotoEntry) {
                    obj2 = Integer.valueOf(((MediaController.PhotoEntry) obj).imageId);
                } else {
                    obj2 = obj instanceof MediaController.SearchImage ? ((MediaController.SearchImage) obj).f1533id : null;
                }
                if (obj2 != null && PhotoPickerActivity.this.selectedPhotos.containsKey(obj2)) {
                    PhotoPickerActivity.this.selectedPhotos.remove(obj2);
                    int indexOf = PhotoPickerActivity.this.selectedPhotosOrder.indexOf(obj2);
                    if (indexOf >= 0) {
                        PhotoPickerActivity.this.selectedPhotosOrder.remove(indexOf);
                    }
                    if (PhotoPickerActivity.this.allowIndices) {
                        PhotoPickerActivity.this.updateCheckedPhotoIndices();
                    }
                    return indexOf;
                }
                return -1;
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public int setPhotoChecked(int i3, VideoEditedInfo videoEditedInfo) {
                int addToSelectedPhotos;
                boolean z3;
                if (PhotoPickerActivity.this.selectedAlbum != null) {
                    if (i3 < 0 || i3 >= PhotoPickerActivity.this.selectedAlbum.photos.size()) {
                        return -1;
                    }
                    MediaController.PhotoEntry photoEntry = PhotoPickerActivity.this.selectedAlbum.photos.get(i3);
                    addToSelectedPhotos = PhotoPickerActivity.this.addToSelectedPhotos(photoEntry, -1);
                    if (addToSelectedPhotos == -1) {
                        photoEntry.editedInfo = videoEditedInfo;
                        addToSelectedPhotos = PhotoPickerActivity.this.selectedPhotosOrder.indexOf(Integer.valueOf(photoEntry.imageId));
                        z3 = true;
                    } else {
                        photoEntry.editedInfo = null;
                        z3 = false;
                    }
                } else if (i3 < 0 || i3 >= PhotoPickerActivity.this.searchResult.size()) {
                    return -1;
                } else {
                    MediaController.SearchImage searchImage = (MediaController.SearchImage) PhotoPickerActivity.this.searchResult.get(i3);
                    addToSelectedPhotos = PhotoPickerActivity.this.addToSelectedPhotos(searchImage, -1);
                    if (addToSelectedPhotos == -1) {
                        searchImage.editedInfo = videoEditedInfo;
                        addToSelectedPhotos = PhotoPickerActivity.this.selectedPhotosOrder.indexOf(searchImage.f1533id);
                        z3 = true;
                    } else {
                        searchImage.editedInfo = null;
                        z3 = false;
                    }
                }
                int childCount = PhotoPickerActivity.this.listView.getChildCount();
                int i4 = 0;
                while (true) {
                    if (i4 >= childCount) {
                        break;
                    }
                    View childAt = PhotoPickerActivity.this.listView.getChildAt(i4);
                    if (((Integer) childAt.getTag()).intValue() == i3) {
                        ((PhotoAttachPhotoCell) childAt).setChecked(PhotoPickerActivity.this.allowIndices ? addToSelectedPhotos : -1, z3, false);
                    } else {
                        i4++;
                    }
                }
                PhotoPickerActivity.this.updatePhotosButton(z3 ? 1 : 2);
                PhotoPickerActivity.this.delegate.selectedPhotosChanged();
                return addToSelectedPhotos;
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public boolean cancelButtonPressed() {
                PhotoPickerActivity.this.delegate.actionButtonPressed(true, true, 0, null, false);
                PhotoPickerActivity.this.finishFragment();
                return true;
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public int getSelectedCount() {
                return PhotoPickerActivity.this.selectedPhotos.size();
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public void sendButtonPressed(int i3, VideoEditedInfo videoEditedInfo, boolean z3, int i4, boolean z4, String str, boolean z5) {
                if (PhotoPickerActivity.this.selectedPhotos.isEmpty()) {
                    if (PhotoPickerActivity.this.selectedAlbum != null) {
                        if (i3 < 0 || i3 >= PhotoPickerActivity.this.selectedAlbum.photos.size()) {
                            return;
                        }
                        MediaController.PhotoEntry photoEntry = PhotoPickerActivity.this.selectedAlbum.photos.get(i3);
                        photoEntry.editedInfo = videoEditedInfo;
                        PhotoPickerActivity.this.addToSelectedPhotos(photoEntry, -1);
                    } else if (i3 < 0 || i3 >= PhotoPickerActivity.this.searchResult.size()) {
                        return;
                    } else {
                        MediaController.SearchImage searchImage = (MediaController.SearchImage) PhotoPickerActivity.this.searchResult.get(i3);
                        searchImage.editedInfo = videoEditedInfo;
                        PhotoPickerActivity.this.addToSelectedPhotos(searchImage, -1);
                    }
                }
                PhotoPickerActivity.this.sendSelectedPhotos(z3, i4, str, z5);
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public ArrayList<Object> getSelectedPhotosOrder() {
                return PhotoPickerActivity.this.selectedPhotosOrder;
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public HashMap<Object, Object> getSelectedPhotos() {
                return PhotoPickerActivity.this.selectedPhotos;
            }
        };
        this.selectedAlbum = albumEntry;
        this.selectedPhotos = hashMap;
        this.selectedPhotosOrder = arrayList;
        this.type = i;
        this.selectPhotoType = i2;
        this.chatActivity = chatActivity;
        this.allowCaption = z;
        this.forceDarckTheme = z2;
        if (albumEntry == null) {
            loadRecentSearch();
        }
        if (z2) {
            this.dialogBackgroundKey = Theme.key_voipgroup_dialogBackground;
            this.textKey = Theme.key_voipgroup_actionBarItems;
            this.selectorKey = Theme.key_voipgroup_actionBarItemsSelector;
            return;
        }
        this.dialogBackgroundKey = Theme.key_dialogBackground;
        this.textKey = Theme.key_dialogTextBlack;
        this.selectorKey = Theme.key_dialogButtonSelector;
    }

    public void setDocumentsPicker(boolean z) {
        this.isDocumentsPicker = z;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.closeChats);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.closeChats);
        if (this.imageReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.imageReqId, true);
            this.imageReqId = 0;
        }
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        int i;
        this.listSort = false;
        this.actionBar.setBackgroundColor(Theme.getColor(this.dialogBackgroundKey));
        this.actionBar.setTitleColor(Theme.getColor(this.textKey));
        this.actionBar.setItemsColor(Theme.getColor(this.textKey), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(this.selectorKey), false);
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        MediaController.AlbumEntry albumEntry = this.selectedAlbum;
        if (albumEntry != null) {
            this.actionBar.setTitle(albumEntry.bucketName);
        } else {
            int i2 = this.type;
            if (i2 == 0) {
                this.actionBar.setTitle(LocaleController.getString("SearchImagesTitle", C3632R.string.SearchImagesTitle));
            } else if (i2 == 1) {
                this.actionBar.setTitle(LocaleController.getString("SearchGifsTitle", C3632R.string.SearchGifsTitle));
            }
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PhotoPickerActivity.2
            {
                PhotoPickerActivity.this = this;
            }

            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i3) {
                if (i3 == -1) {
                    PhotoPickerActivity.this.finishFragment();
                } else if (i3 != 1) {
                    if (i3 == 2) {
                        if (PhotoPickerActivity.this.delegate != null) {
                            PhotoPickerActivity.this.delegate.onOpenInPressed();
                        }
                        PhotoPickerActivity.this.finishFragment();
                    }
                } else {
                    PhotoPickerActivity photoPickerActivity = PhotoPickerActivity.this;
                    photoPickerActivity.listSort = true ^ photoPickerActivity.listSort;
                    if (PhotoPickerActivity.this.listSort) {
                        PhotoPickerActivity.this.listView.setPadding(0, 0, 0, AndroidUtilities.m107dp(48));
                    } else {
                        PhotoPickerActivity.this.listView.setPadding(AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(50));
                    }
                    PhotoPickerActivity.this.listView.stopScroll();
                    PhotoPickerActivity.this.layoutManager.scrollToPositionWithOffset(0, 0);
                    PhotoPickerActivity.this.listAdapter.notifyDataSetChanged();
                }
            }
        });
        if (this.isDocumentsPicker) {
            ActionBarMenuItem addItem = this.actionBar.createMenu().addItem(0, C3632R.C3634drawable.ic_ab_other);
            addItem.setSubMenuDelegate(new ActionBarMenuItem.ActionBarSubMenuItemDelegate() { // from class: org.telegram.ui.PhotoPickerActivity.3
                @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarSubMenuItemDelegate
                public void onHideSubMenu() {
                }

                {
                    PhotoPickerActivity.this = this;
                }

                @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarSubMenuItemDelegate
                public void onShowSubMenu() {
                    int i3;
                    String str;
                    ActionBarMenuSubItem actionBarMenuSubItem = PhotoPickerActivity.this.showAsListItem;
                    if (PhotoPickerActivity.this.listSort) {
                        i3 = C3632R.string.ShowAsGrid;
                        str = "ShowAsGrid";
                    } else {
                        i3 = C3632R.string.ShowAsList;
                        str = "ShowAsList";
                    }
                    actionBarMenuSubItem.setText(LocaleController.getString(str, i3));
                    PhotoPickerActivity.this.showAsListItem.setIcon(PhotoPickerActivity.this.listSort ? C3632R.C3634drawable.msg_media : C3632R.C3634drawable.msg_list);
                }
            });
            this.showAsListItem = addItem.addSubItem(1, C3632R.C3634drawable.msg_list, LocaleController.getString("ShowAsList", C3632R.string.ShowAsList));
            addItem.addSubItem(2, C3632R.C3634drawable.msg_openin, LocaleController.getString("OpenInExternalApp", C3632R.string.OpenInExternalApp));
        }
        if (this.selectedAlbum == null) {
            ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C3632R.C3634drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new C67914());
            this.searchItem = actionBarMenuItemSearchListener;
            EditTextBoldCursor searchField = actionBarMenuItemSearchListener.getSearchField();
            searchField.setTextColor(Theme.getColor(this.textKey));
            searchField.setCursorColor(Theme.getColor(this.textKey));
            searchField.setHintTextColor(Theme.getColor(Theme.key_chat_messagePanelHint));
        }
        if (this.selectedAlbum == null) {
            int i3 = this.type;
            if (i3 == 0) {
                this.searchItem.setSearchFieldHint(LocaleController.getString("SearchImagesTitle", C3632R.string.SearchImagesTitle));
            } else if (i3 == 1) {
                this.searchItem.setSearchFieldHint(LocaleController.getString("SearchGifsTitle", C3632R.string.SearchGifsTitle));
            }
        }
        C67925 c67925 = new C67925(context);
        this.sizeNotifierFrameLayout = c67925;
        c67925.setBackgroundColor(Theme.getColor(this.dialogBackgroundKey));
        this.fragmentView = this.sizeNotifierFrameLayout;
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setPadding(AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(50));
        this.listView.setClipToPadding(false);
        this.listView.setHorizontalScrollBarEnabled(false);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setItemAnimator(null);
        this.listView.setLayoutAnimation(null);
        RecyclerListView recyclerListView2 = this.listView;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this, context, 4) { // from class: org.telegram.ui.PhotoPickerActivity.6
            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        };
        this.layoutManager = gridLayoutManager;
        recyclerListView2.setLayoutManager(gridLayoutManager);
        this.layoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.PhotoPickerActivity.7
            {
                PhotoPickerActivity.this = this;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i4) {
                if (PhotoPickerActivity.this.listAdapter.getItemViewType(i4) == 1 || PhotoPickerActivity.this.listSort || (PhotoPickerActivity.this.selectedAlbum == null && TextUtils.isEmpty(PhotoPickerActivity.this.lastSearchString))) {
                    return PhotoPickerActivity.this.layoutManager.getSpanCount();
                }
                return PhotoPickerActivity.this.itemSize + (i4 % PhotoPickerActivity.this.itemsPerRow != PhotoPickerActivity.this.itemsPerRow - 1 ? AndroidUtilities.m107dp(5) : 0);
            }
        });
        this.sizeNotifierFrameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        RecyclerListView recyclerListView3 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listAdapter = listAdapter;
        recyclerListView3.setAdapter(listAdapter);
        this.listView.setGlowColor(Theme.getColor(this.dialogBackgroundKey));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i4) {
                PhotoPickerActivity.this.lambda$createView$1(view, i4);
            }
        });
        if (this.maxSelectedPhotos != 1) {
            this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda13
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
                public final boolean onItemClick(View view, int i4) {
                    boolean lambda$createView$2;
                    lambda$createView$2 = PhotoPickerActivity.this.lambda$createView$2(view, i4);
                    return lambda$createView$2;
                }
            });
        }
        RecyclerViewItemRangeSelector recyclerViewItemRangeSelector = new RecyclerViewItemRangeSelector(new RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate() { // from class: org.telegram.ui.PhotoPickerActivity.8
            {
                PhotoPickerActivity.this = this;
            }

            @Override // org.telegram.p043ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public void setSelected(View view, int i4, boolean z) {
                if (z == PhotoPickerActivity.this.shouldSelect && (view instanceof PhotoAttachPhotoCell)) {
                    ((PhotoAttachPhotoCell) view).callDelegate();
                }
            }

            @Override // org.telegram.p043ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public boolean isSelected(int i4) {
                Object obj;
                if (PhotoPickerActivity.this.selectedAlbum != null) {
                    obj = Integer.valueOf(PhotoPickerActivity.this.selectedAlbum.photos.get(i4).imageId);
                } else {
                    obj = ((MediaController.SearchImage) PhotoPickerActivity.this.searchResult.get(i4)).f1533id;
                }
                return PhotoPickerActivity.this.selectedPhotos.containsKey(obj);
            }

            @Override // org.telegram.p043ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public boolean isIndexSelectable(int i4) {
                return PhotoPickerActivity.this.listAdapter.getItemViewType(i4) == 0;
            }

            @Override // org.telegram.p043ui.Components.RecyclerViewItemRangeSelector.RecyclerViewItemRangeSelectorDelegate
            public void onStartStopSelection(boolean z) {
                PhotoPickerActivity.this.alertOnlyOnce = z ? 1 : 0;
                if (z) {
                    ((BaseFragment) PhotoPickerActivity.this).parentLayout.getView().requestDisallowInterceptTouchEvent(true);
                }
                PhotoPickerActivity.this.listView.hideSelector(true);
            }
        });
        this.itemRangeSelector = recyclerViewItemRangeSelector;
        if (this.maxSelectedPhotos != 1) {
            this.listView.addOnItemTouchListener(recyclerViewItemRangeSelector);
        }
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this, context, getResourceProvider()) { // from class: org.telegram.ui.PhotoPickerActivity.9
            @Override // org.telegram.p043ui.Components.FlickerLoadingView
            public int getColumnsCount() {
                return 3;
            }

            @Override // org.telegram.p043ui.Components.FlickerLoadingView
            public int getViewType() {
                return 2;
            }
        };
        this.flickerView = flickerLoadingView;
        flickerLoadingView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.flickerView.setVisibility(8);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, this.flickerView, 1, getResourceProvider());
        this.emptyView = stickerEmptyView;
        stickerEmptyView.setAnimateLayoutChange(true);
        this.emptyView.title.setTypeface(Typeface.DEFAULT);
        this.emptyView.title.setTextSize(1, 16.0f);
        this.emptyView.title.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        this.emptyView.addView(this.flickerView, 0);
        if (this.selectedAlbum != null) {
            this.emptyView.title.setText(LocaleController.getString("NoPhotos", C3632R.string.NoPhotos));
        } else {
            this.emptyView.title.setText(LocaleController.getString("NoRecentSearches", C3632R.string.NoRecentSearches));
        }
        this.emptyView.showProgress(false, false);
        this.sizeNotifierFrameLayout.addView(this.emptyView, LayoutHelper.createFrame(-1, -1, 51, 0, 126, 0, 0));
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.PhotoPickerActivity.10
            {
                PhotoPickerActivity.this = this;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i4) {
                if (i4 == 1) {
                    AndroidUtilities.hideKeyboard(PhotoPickerActivity.this.getParentActivity().getCurrentFocus());
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                if (PhotoPickerActivity.this.selectedAlbum == null) {
                    int findFirstVisibleItemPosition = PhotoPickerActivity.this.layoutManager.findFirstVisibleItemPosition();
                    int abs = findFirstVisibleItemPosition == -1 ? 0 : Math.abs(PhotoPickerActivity.this.layoutManager.findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1;
                    if (abs <= 0 || findFirstVisibleItemPosition + abs <= PhotoPickerActivity.this.layoutManager.getItemCount() - 2 || PhotoPickerActivity.this.searching || PhotoPickerActivity.this.imageSearchEndReached) {
                        return;
                    }
                    PhotoPickerActivity photoPickerActivity = PhotoPickerActivity.this;
                    photoPickerActivity.searchImages(photoPickerActivity.type == 1, PhotoPickerActivity.this.lastSearchString, PhotoPickerActivity.this.nextImagesSearchOffset, true);
                }
            }
        });
        if (this.selectedAlbum == null) {
            updateSearchInterface();
        }
        if (this.needsBottomLayout) {
            View view = new View(context);
            this.shadow = view;
            view.setBackgroundResource(C3632R.C3634drawable.header_shadow_reverse);
            this.shadow.setTranslationY(AndroidUtilities.m107dp(48));
            this.sizeNotifierFrameLayout.addView(this.shadow, LayoutHelper.createFrame(-1, 3, 83, 0, 0, 0, 48));
            FrameLayout frameLayout = new FrameLayout(context);
            this.frameLayout2 = frameLayout;
            frameLayout.setBackgroundColor(Theme.getColor(this.dialogBackgroundKey));
            this.frameLayout2.setVisibility(4);
            this.frameLayout2.setTranslationY(AndroidUtilities.m107dp(48));
            this.sizeNotifierFrameLayout.addView(this.frameLayout2, LayoutHelper.createFrame(-1, 48, 83));
            this.frameLayout2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean lambda$createView$3;
                    lambda$createView$3 = PhotoPickerActivity.lambda$createView$3(view2, motionEvent);
                    return lambda$createView$3;
                }
            });
            EditTextEmoji editTextEmoji = this.commentTextView;
            if (editTextEmoji != null) {
                editTextEmoji.onDestroy();
            }
            this.commentTextView = new EditTextEmoji(context, this.sizeNotifierFrameLayout, null, 1, false);
            this.commentTextView.setFilters(new InputFilter[]{new InputFilter.LengthFilter(MessagesController.getInstance(UserConfig.selectedAccount).maxCaptionLength)});
            this.commentTextView.setHint(LocaleController.getString("AddCaption", C3632R.string.AddCaption));
            this.commentTextView.onResume();
            EditTextCaption editText = this.commentTextView.getEditText();
            editText.setMaxLines(1);
            editText.setSingleLine(true);
            this.frameLayout2.addView(this.commentTextView, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 84, 0));
            CharSequence charSequence = this.caption;
            if (charSequence != null) {
                this.commentTextView.setText(charSequence);
            }
            this.commentTextView.getEditText().addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.PhotoPickerActivity.11
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence2, int i4, int i5, int i6) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence2, int i4, int i5, int i6) {
                }

                {
                    PhotoPickerActivity.this = this;
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    if (PhotoPickerActivity.this.delegate != null) {
                        PhotoPickerActivity.this.delegate.onCaptionChanged(editable);
                    }
                }
            });
            FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.PhotoPickerActivity.12
                {
                    PhotoPickerActivity.this = this;
                }

                @Override // android.view.View
                public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                    accessibilityNodeInfo.setText(LocaleController.formatPluralString("AccDescrSendPhotos", PhotoPickerActivity.this.selectedPhotos.size(), new Object[0]));
                    accessibilityNodeInfo.setClassName(Button.class.getName());
                    accessibilityNodeInfo.setLongClickable(true);
                    accessibilityNodeInfo.setClickable(true);
                }
            };
            this.writeButtonContainer = frameLayout2;
            frameLayout2.setFocusable(true);
            this.writeButtonContainer.setFocusableInTouchMode(true);
            this.writeButtonContainer.setVisibility(4);
            this.writeButtonContainer.setScaleX(0.2f);
            this.writeButtonContainer.setScaleY(0.2f);
            this.writeButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.sizeNotifierFrameLayout.addView(this.writeButtonContainer, LayoutHelper.createFrame(60, 60, 85, 0, 0, 12, 10));
            this.writeButton = new ImageView(context);
            int m107dp = AndroidUtilities.m107dp(56);
            int i4 = Theme.key_dialogFloatingButton;
            int color = Theme.getColor(i4);
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 21) {
                i4 = Theme.key_dialogFloatingButtonPressed;
            }
            this.writeButtonDrawable = Theme.createSimpleSelectorCircleDrawable(m107dp, color, Theme.getColor(i4));
            if (i5 < 21) {
                Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.floating_shadow_profile).mutate();
                mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
                CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, this.writeButtonDrawable, 0, 0);
                combinedDrawable.setIconSize(AndroidUtilities.m107dp(56), AndroidUtilities.m107dp(56));
                this.writeButtonDrawable = combinedDrawable;
            }
            this.writeButton.setBackgroundDrawable(this.writeButtonDrawable);
            this.writeButton.setImageResource(C3632R.C3634drawable.attach_send);
            this.writeButton.setImportantForAccessibility(2);
            this.writeButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogFloatingIcon), PorterDuff.Mode.MULTIPLY));
            this.writeButton.setScaleType(ImageView.ScaleType.CENTER);
            if (i5 >= 21) {
                this.writeButton.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.PhotoPickerActivity.13
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view2, Outline outline) {
                        outline.setOval(0, 0, AndroidUtilities.m107dp(56), AndroidUtilities.m107dp(56));
                    }
                });
            }
            this.writeButtonContainer.addView(this.writeButton, LayoutHelper.createFrame(i5 >= 21 ? 56 : 60, i5 >= 21 ? 56 : 60, 51, i5 >= 21 ? 2 : 0, 0, 0, 0));
            this.writeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PhotoPickerActivity.this.lambda$createView$4(view2);
                }
            });
            this.writeButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    boolean lambda$createView$8;
                    lambda$createView$8 = PhotoPickerActivity.this.lambda$createView$8(view2);
                    return lambda$createView$8;
                }
            });
            this.textPaint.setTextSize(AndroidUtilities.m107dp(12));
            this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            View view2 = new View(context) { // from class: org.telegram.ui.PhotoPickerActivity.15
                {
                    PhotoPickerActivity.this = this;
                }

                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    String format = String.format("%d", Integer.valueOf(Math.max(1, PhotoPickerActivity.this.selectedPhotosOrder.size())));
                    int ceil = (int) Math.ceil(PhotoPickerActivity.this.textPaint.measureText(format));
                    int max = Math.max(AndroidUtilities.m107dp(16) + ceil, AndroidUtilities.m107dp(24));
                    int measuredWidth = getMeasuredWidth() / 2;
                    int measuredHeight = getMeasuredHeight() / 2;
                    PhotoPickerActivity.this.textPaint.setColor(Theme.getColor(Theme.key_dialogRoundCheckBoxCheck));
                    PhotoPickerActivity.this.paint.setColor(Theme.getColor(PhotoPickerActivity.this.dialogBackgroundKey));
                    int i6 = max / 2;
                    int i7 = measuredWidth - i6;
                    int i8 = i6 + measuredWidth;
                    PhotoPickerActivity.this.rect.set(i7, BitmapDescriptorFactory.HUE_RED, i8, getMeasuredHeight());
                    canvas.drawRoundRect(PhotoPickerActivity.this.rect, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), PhotoPickerActivity.this.paint);
                    PhotoPickerActivity.this.paint.setColor(Theme.getColor(Theme.key_dialogRoundCheckBox));
                    PhotoPickerActivity.this.rect.set(i7 + AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), i8 - AndroidUtilities.m107dp(2), getMeasuredHeight() - AndroidUtilities.m107dp(2));
                    canvas.drawRoundRect(PhotoPickerActivity.this.rect, AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10), PhotoPickerActivity.this.paint);
                    canvas.drawText(format, measuredWidth - (ceil / 2), AndroidUtilities.m108dp(16.2f), PhotoPickerActivity.this.textPaint);
                }
            };
            this.selectedCountView = view2;
            view2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.selectedCountView.setScaleX(0.2f);
            this.selectedCountView.setScaleY(0.2f);
            this.sizeNotifierFrameLayout.addView(this.selectedCountView, LayoutHelper.createFrame(42, 24, 85, 0, 0, -2, 9));
            if (this.selectPhotoType != PhotoAlbumPickerActivity.SELECT_TYPE_ALL) {
                this.commentTextView.setVisibility(8);
            }
        }
        this.allowIndices = (this.selectedAlbum != null || (i = this.type) == 0 || i == 1) && this.allowOrder;
        this.listView.setEmptyView(this.emptyView);
        this.listView.setAnimateEmptyView(true, 0);
        updatePhotosButton(0);
        return this.fragmentView;
    }

    /* renamed from: org.telegram.ui.PhotoPickerActivity$4 */
    /* loaded from: classes5.dex */
    public class C67914 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        Runnable updateSearch = new Runnable() { // from class: org.telegram.ui.PhotoPickerActivity$4$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PhotoPickerActivity.C67914.this.lambda$$0();
            }
        };

        @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchExpand() {
        }

        C67914() {
            PhotoPickerActivity.this = r1;
        }

        @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public boolean canCollapseSearch() {
            PhotoPickerActivity.this.finishFragment();
            return false;
        }

        @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onTextChanged(EditText editText) {
            if (editText.getText().length() == 0) {
                PhotoPickerActivity.this.searchResult.clear();
                PhotoPickerActivity.this.searchResultKeys.clear();
                PhotoPickerActivity.this.lastSearchString = null;
                PhotoPickerActivity.this.imageSearchEndReached = true;
                PhotoPickerActivity.this.searching = false;
                if (PhotoPickerActivity.this.imageReqId != 0) {
                    ConnectionsManager.getInstance(((BaseFragment) PhotoPickerActivity.this).currentAccount).cancelRequest(PhotoPickerActivity.this.imageReqId, true);
                    PhotoPickerActivity.this.imageReqId = 0;
                }
                PhotoPickerActivity.this.emptyView.title.setText(LocaleController.getString("NoRecentSearches", C3632R.string.NoRecentSearches));
                PhotoPickerActivity.this.emptyView.showProgress(false);
                PhotoPickerActivity.this.updateSearchInterface();
                return;
            }
            AndroidUtilities.cancelRunOnUIThread(this.updateSearch);
            AndroidUtilities.runOnUIThread(this.updateSearch, 1200L);
        }

        public /* synthetic */ void lambda$$0() {
            PhotoPickerActivity photoPickerActivity = PhotoPickerActivity.this;
            photoPickerActivity.processSearch(photoPickerActivity.searchItem.getSearchField());
        }

        @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchPressed(EditText editText) {
            PhotoPickerActivity.this.processSearch(editText);
        }
    }

    /* renamed from: org.telegram.ui.PhotoPickerActivity$5 */
    /* loaded from: classes5.dex */
    public class C67925 extends SizeNotifierFrameLayout {
        private boolean ignoreLayout;
        private int lastItemSize;
        private int lastNotifyWidth;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C67925(Context context) {
            super(context);
            PhotoPickerActivity.this = r1;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i2);
            int size2 = View.MeasureSpec.getSize(i);
            if (AndroidUtilities.isTablet()) {
                PhotoPickerActivity.this.itemsPerRow = 4;
            } else {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    PhotoPickerActivity.this.itemsPerRow = 4;
                } else {
                    PhotoPickerActivity.this.itemsPerRow = 3;
                }
            }
            this.ignoreLayout = true;
            PhotoPickerActivity.this.itemSize = ((size2 - AndroidUtilities.m107dp(12)) - AndroidUtilities.m107dp(10)) / PhotoPickerActivity.this.itemsPerRow;
            if (this.lastItemSize != PhotoPickerActivity.this.itemSize) {
                this.lastItemSize = PhotoPickerActivity.this.itemSize;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoPickerActivity$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoPickerActivity.C67925.this.lambda$onMeasure$0();
                    }
                });
            }
            if (PhotoPickerActivity.this.listSort) {
                PhotoPickerActivity.this.layoutManager.setSpanCount(1);
            } else {
                PhotoPickerActivity.this.layoutManager.setSpanCount((PhotoPickerActivity.this.itemSize * PhotoPickerActivity.this.itemsPerRow) + (AndroidUtilities.m107dp(5) * (PhotoPickerActivity.this.itemsPerRow - 1)));
            }
            this.ignoreLayout = false;
            onMeasureInternal(i, View.MeasureSpec.makeMeasureSpec(size, 1073741824));
        }

        public /* synthetic */ void lambda$onMeasure$0() {
            PhotoPickerActivity.this.listAdapter.notifyDataSetChanged();
        }

        private void onMeasureInternal(int i, int i2) {
            EditTextEmoji editTextEmoji;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            setMeasuredDimension(size, size2);
            int measureKeyboardHeight = measureKeyboardHeight();
            if (AndroidUtilities.m107dp(20) >= 0 && !AndroidUtilities.isInMultiwindow) {
                PhotoPickerActivity photoPickerActivity = PhotoPickerActivity.this;
                if (photoPickerActivity.commentTextView != null && photoPickerActivity.frameLayout2.getParent() == this) {
                    size2 -= PhotoPickerActivity.this.commentTextView.getEmojiPadding();
                    i2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
                }
            }
            if (measureKeyboardHeight > AndroidUtilities.m107dp(20) && (editTextEmoji = PhotoPickerActivity.this.commentTextView) != null) {
                this.ignoreLayout = true;
                editTextEmoji.hideEmojiView();
                this.ignoreLayout = false;
            }
            EditTextEmoji editTextEmoji2 = PhotoPickerActivity.this.commentTextView;
            if (editTextEmoji2 != null && editTextEmoji2.isPopupShowing()) {
                PhotoPickerActivity.this.fragmentView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                PhotoPickerActivity.this.listView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                PhotoPickerActivity.this.emptyView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt != null && childAt.getVisibility() != 8) {
                    EditTextEmoji editTextEmoji3 = PhotoPickerActivity.this.commentTextView;
                    if (editTextEmoji3 != null && editTextEmoji3.isPopupView(childAt)) {
                        if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                            if (AndroidUtilities.isTablet()) {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m107dp(AndroidUtilities.isTablet() ? 200 : 320), (size2 - AndroidUtilities.statusBarHeight) + getPaddingTop()), 1073741824));
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

        /* JADX WARN: Removed duplicated region for block: B:109:0x00b9  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x00d3  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x00f2  */
        /* JADX WARN: Removed duplicated region for block: B:125:0x00fb  */
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onLayout(boolean r10, int r11, int r12, int r13, int r14) {
            /*
                Method dump skipped, instructions count: 274
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.PhotoPickerActivity.C67925.onLayout(boolean, int, int, int, int):void");
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }
    }

    public /* synthetic */ void lambda$createView$1(View view, int i) {
        ArrayList<Object> arrayList;
        int i2 = 1;
        if (this.selectedAlbum == null && this.searchResult.isEmpty()) {
            if (i < this.recentSearches.size()) {
                String str = this.recentSearches.get(i);
                PhotoPickerActivitySearchDelegate photoPickerActivitySearchDelegate = this.searchDelegate;
                if (photoPickerActivitySearchDelegate != null) {
                    photoPickerActivitySearchDelegate.shouldSearchText(str);
                    return;
                }
                this.searchItem.getSearchField().setText(str);
                this.searchItem.getSearchField().setSelection(str.length());
                processSearch(this.searchItem.getSearchField());
                return;
            } else if (i == this.recentSearches.size() + 1) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setTitle(LocaleController.getString("ClearSearchAlertTitle", C3632R.string.ClearSearchAlertTitle));
                builder.setMessage(LocaleController.getString("ClearSearchAlert", C3632R.string.ClearSearchAlert));
                builder.setPositiveButton(LocaleController.getString("ClearButton", C3632R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        PhotoPickerActivity.this.lambda$createView$0(dialogInterface, i3);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                AlertDialog create = builder.create();
                showDialog(create);
                TextView textView = (TextView) create.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                    return;
                }
                return;
            } else {
                return;
            }
        }
        MediaController.AlbumEntry albumEntry = this.selectedAlbum;
        if (albumEntry != null) {
            arrayList = albumEntry.photos;
        } else {
            arrayList = this.searchResult;
        }
        ArrayList<Object> arrayList2 = arrayList;
        if (i < 0 || i >= arrayList2.size()) {
            return;
        }
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            AndroidUtilities.hideKeyboard(actionBarMenuItem.getSearchField());
        }
        if (this.listSort) {
            onListItemClick(view, arrayList2.get(i));
            return;
        }
        int i3 = this.selectPhotoType;
        if (i3 != PhotoAlbumPickerActivity.SELECT_TYPE_AVATAR && i3 != PhotoAlbumPickerActivity.SELECT_TYPE_AVATAR_VIDEO) {
            if (i3 == PhotoAlbumPickerActivity.SELECT_TYPE_WALLPAPER) {
                i2 = 3;
            } else if (i3 == PhotoAlbumPickerActivity.SELECT_TYPE_QR) {
                i2 = 10;
            } else {
                i2 = this.chatActivity == null ? 4 : 0;
            }
        }
        PhotoViewer.getInstance().setParentActivity(this);
        PhotoViewer.getInstance().setMaxSelectedPhotos(this.maxSelectedPhotos, this.allowOrder);
        PhotoViewer.getInstance().openPhotoForSelect(arrayList2, i, i2, this.isDocumentsPicker, this.provider, this.chatActivity);
    }

    public /* synthetic */ void lambda$createView$0(DialogInterface dialogInterface, int i) {
        PhotoPickerActivitySearchDelegate photoPickerActivitySearchDelegate = this.searchDelegate;
        if (photoPickerActivitySearchDelegate != null) {
            photoPickerActivitySearchDelegate.shouldClearRecentSearch();
        } else {
            clearRecentSearch();
        }
    }

    public /* synthetic */ boolean lambda$createView$2(View view, int i) {
        if (this.listSort) {
            onListItemClick(view, this.selectedAlbum.photos.get(i));
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

    public /* synthetic */ void lambda$createView$4(View view) {
        ChatActivity chatActivity;
        ChatActivity chatActivity2 = this.chatActivity;
        if ((chatActivity2 != null && chatActivity2.isInScheduleMode()) || ((chatActivity = this.chatActivity) != null && chatActivity.isTemplatesChannel(true, true))) {
            AlertsCreator.createScheduleDatePickerDialog(getParentActivity(), this.chatActivity.getDialogId(), new PhotoPickerActivity$$ExternalSyntheticLambda11(this), this.chatActivity);
        } else {
            sendSelectedPhotos(true, 0);
        }
    }

    public /* synthetic */ boolean lambda$createView$8(View view) {
        ChatActivity chatActivity = this.chatActivity;
        if (chatActivity != null && this.maxSelectedPhotos != 1 && !chatActivity.isInScheduleMode() && !this.chatActivity.isTemplatesChannel(true, false)) {
            this.chatActivity.getCurrentChat();
            TLRPC$User currentUser = this.chatActivity.getCurrentUser();
            this.sendPopupLayout = null;
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity());
            this.sendPopupLayout = actionBarPopupWindowLayout;
            actionBarPopupWindowLayout.setAnimationEnabled(false);
            this.sendPopupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.PhotoPickerActivity.14
                private Rect popupRect = new Rect();

                {
                    PhotoPickerActivity.this = this;
                }

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    if (motionEvent.getActionMasked() == 0 && PhotoPickerActivity.this.sendPopupWindow != null && PhotoPickerActivity.this.sendPopupWindow.isShowing()) {
                        view2.getHitRect(this.popupRect);
                        if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                            return false;
                        }
                        PhotoPickerActivity.this.sendPopupWindow.dismiss();
                        return false;
                    }
                    return false;
                }
            });
            this.sendPopupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda10
                @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                    PhotoPickerActivity.this.lambda$createView$5(keyEvent);
                }
            });
            this.sendPopupLayout.setShownFromBottom(false);
            this.itemCells = new ActionBarMenuSubItem[2];
            int[] iArr = {IdFabric$Menu.REACTIONS, IdFabric$Menu.TRANSLATE, 0, 1};
            this.itemCells = new ActionBarMenuSubItem[4];
            final String trim = this.commentTextView.getText().toString().trim();
            int i = 0;
            for (int i2 = 4; i < i2; i2 = 4) {
                final int i3 = iArr[i];
                int i4 = IdFabric$Menu.REACTIONS;
                boolean z = i3 != i4 ? !(i3 != IdFabric$Menu.TRANSLATE || (SharedConfig.isTranslateInSendPopupEnabled && !trim.isEmpty())) : !(SharedConfig.isReactionsInSendPopupEnabled && this.selectedPhotos.size() == 1);
                if ((i3 == 0 && !this.chatActivity.canScheduleMessage()) || (i3 == 1 && UserObject.isUserSelf(currentUser))) {
                    z = true;
                }
                if (!z) {
                    this.itemCells[i] = new ActionBarMenuSubItem(getParentActivity(), i == 0, i == 1);
                    this.itemCells[i].updateSelectorBackground(i == 0, i == 3);
                    if (i3 == i4) {
                        this.itemCells[i].setTextAndIcon(LocaleController.getInternalString(C3632R.string.sending_settings_send_add_reactions), C3632R.C3634drawable.fork_ic_reactions);
                    } else if (i3 == IdFabric$Menu.TRANSLATE) {
                        this.itemCells[i].setTextAndIcon(LocaleController.getInternalString(C3632R.string.chat_long_action_translate), C3632R.C3634drawable.msg_translate);
                    } else if (i3 == 0) {
                        if (UserObject.isUserSelf(currentUser)) {
                            this.itemCells[i].setTextAndIcon(LocaleController.getString("SetReminder", C3632R.string.SetReminder), C3632R.C3634drawable.msg_calendar2);
                        } else {
                            this.itemCells[i].setTextAndIcon(LocaleController.getString("ScheduleMessage", C3632R.string.ScheduleMessage), C3632R.C3634drawable.msg_calendar2);
                        }
                    } else if (getToolsController().isSilentSendingEnabledForDialog(this.chatActivity.getDialogId())) {
                        this.itemCells[i].setTextAndIcon(LocaleController.getInternalString(C3632R.string.send_with_sound), C3632R.C3634drawable.input_notify_on);
                    } else {
                        this.itemCells[i].setTextAndIcon(LocaleController.getString("SendWithoutSound", C3632R.string.SendWithoutSound), C3632R.C3634drawable.input_notify_off);
                    }
                    this.itemCells[i].setMinimumWidth(AndroidUtilities.m107dp(196));
                    this.sendPopupLayout.addView((View) this.itemCells[i], LayoutHelper.createLinear(-1, 48));
                    this.itemCells[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            PhotoPickerActivity.this.lambda$createView$7(i3, trim, view2);
                        }
                    });
                }
                i++;
            }
            this.sendPopupLayout.setupRadialSelectors(Theme.getColor(this.selectorKey));
            ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(this.sendPopupLayout, -2, -2);
            this.sendPopupWindow = actionBarPopupWindow;
            actionBarPopupWindow.setAnimationEnabled(false);
            this.sendPopupWindow.setAnimationStyle(C3632R.style.PopupContextAnimation2);
            this.sendPopupWindow.setOutsideTouchable(true);
            this.sendPopupWindow.setClippingEnabled(true);
            this.sendPopupWindow.setInputMethodMode(2);
            this.sendPopupWindow.setSoftInputMode(0);
            this.sendPopupWindow.getContentView().setFocusableInTouchMode(true);
            this.sendPopupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE));
            this.sendPopupWindow.setFocusable(true);
            int[] iArr2 = new int[2];
            view.getLocationInWindow(iArr2);
            this.sendPopupWindow.showAtLocation(view, 51, ((iArr2[0] + view.getMeasuredWidth()) - this.sendPopupLayout.getMeasuredWidth()) + AndroidUtilities.m107dp(8), (iArr2[1] - this.sendPopupLayout.getMeasuredHeight()) - AndroidUtilities.m107dp(2));
            this.sendPopupWindow.dimBehind();
            view.performHapticFeedback(3, 2);
        }
        return false;
    }

    public /* synthetic */ void lambda$createView$5(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    public /* synthetic */ void lambda$createView$7(int i, String str, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        if (i == IdFabric$Menu.REACTIONS) {
            sendSelectedPhotos(true, 0, null, true);
        } else if (i == IdFabric$Menu.TRANSLATE) {
            showDialog(this.chatActivity.createTranslateOutgoingDialog(str, new Callbacks$Callback1() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda5
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    PhotoPickerActivity.this.lambda$createView$6((String) obj);
                }
            }));
        } else if (i == 0) {
            AlertsCreator.createScheduleDatePickerDialog(getParentActivity(), this.chatActivity.getDialogId(), new PhotoPickerActivity$$ExternalSyntheticLambda11(this), null);
        } else {
            sendSelectedPhotos(true, 0);
        }
    }

    public /* synthetic */ void lambda$createView$6(String str) {
        if (this.commentTextView == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.commentTextView.setText(str);
        this.commentTextView.setSelection(str.length());
    }

    public void setLayoutViews(FrameLayout frameLayout, FrameLayout frameLayout2, View view, View view2, EditTextEmoji editTextEmoji) {
        this.frameLayout2 = frameLayout;
        this.writeButtonContainer = frameLayout2;
        this.commentTextView = editTextEmoji;
        this.selectedCountView = view;
        this.shadow = view2;
        this.needsBottomLayout = false;
    }

    private void applyCaption() {
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji == null || editTextEmoji.length() <= 0) {
            return;
        }
        Object obj = this.selectedPhotos.get(this.selectedPhotosOrder.get(0));
        if (obj instanceof MediaController.PhotoEntry) {
            ((MediaController.PhotoEntry) obj).caption = this.commentTextView.getText().toString();
        } else if (obj instanceof MediaController.SearchImage) {
            ((MediaController.SearchImage) obj).caption = this.commentTextView.getText().toString();
        }
    }

    private void onListItemClick(View view, Object obj) {
        boolean z = addToSelectedPhotos(obj, -1) == -1;
        if (view instanceof SharedDocumentCell) {
            ((SharedDocumentCell) view).setChecked(this.selectedPhotosOrder.contains(Integer.valueOf(this.selectedAlbum.photos.get(((Integer) view.getTag()).intValue()).imageId)), true);
        }
        updatePhotosButton(z ? 1 : 2);
        this.delegate.selectedPhotosChanged();
    }

    public void clearRecentSearch() {
        this.recentSearches.clear();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        this.emptyView.showProgress(false);
        saveRecentSearch();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.openSearch(true);
            if (!TextUtils.isEmpty(this.initialSearchString)) {
                this.searchItem.setSearchFieldText(this.initialSearchString, false);
                this.initialSearchString = null;
                processSearch(this.searchItem.getSearchField());
            }
            getParentActivity().getWindow().setSoftInputMode(32);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.closeChats) {
            removeSelfFromStack(true);
        }
    }

    public RecyclerListView getListView() {
        return this.listView;
    }

    public void setCaption(CharSequence charSequence) {
        this.caption = charSequence;
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.setText(charSequence);
        }
    }

    public void setInitialSearchString(String str) {
        this.initialSearchString = str;
    }

    private void saveRecentSearch() {
        SharedPreferences.Editor edit = ApplicationLoader.applicationContext.getSharedPreferences("web_recent_search", 0).edit();
        edit.clear();
        edit.putInt(NotificationBadge.NewHtcHomeBadger.COUNT, this.recentSearches.size());
        int size = this.recentSearches.size();
        for (int i = 0; i < size; i++) {
            edit.putString("recent" + i, this.recentSearches.get(i));
        }
        edit.commit();
    }

    private void loadRecentSearch() {
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("web_recent_search", 0);
        int i = sharedPreferences.getInt(NotificationBadge.NewHtcHomeBadger.COUNT, 0);
        for (int i2 = 0; i2 < i; i2++) {
            String string = sharedPreferences.getString("recent" + i2, null);
            if (string == null) {
                return;
            }
            this.recentSearches.add(string);
        }
    }

    private void addToRecentSearches(String str) {
        ArrayList<String> arrayList;
        int size = this.recentSearches.size();
        int i = 0;
        while (true) {
            if (i < size) {
                String str2 = this.recentSearches.get(i);
                if (str2 != null && str2.equalsIgnoreCase(str)) {
                    this.recentSearches.remove(i);
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        this.recentSearches.add(0, str);
        while (this.recentSearches.size() > 20) {
            this.recentSearches.remove(arrayList.size() - 1);
        }
        saveRecentSearch();
    }

    public void processSearch(EditText editText) {
        if (editText.getText().length() == 0) {
            return;
        }
        String obj = editText.getText().toString();
        this.searchResult.clear();
        this.searchResultKeys.clear();
        this.imageSearchEndReached = true;
        searchImages(this.type == 1, obj, "", true);
        this.lastSearchString = obj;
        if (obj.length() == 0) {
            this.lastSearchString = null;
            this.emptyView.title.setText(LocaleController.getString("NoRecentSearches", C3632R.string.NoRecentSearches));
        } else {
            this.emptyView.title.setText(LocaleController.formatString("NoResultFoundFor", C3632R.string.NoResultFoundFor, this.lastSearchString));
        }
        updateSearchInterface();
    }

    private boolean showCommentTextView(final boolean z, boolean z2) {
        if (this.commentTextView == null) {
            return false;
        }
        if (z == (this.frameLayout2.getTag() != null)) {
            return false;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.frameLayout2.setTag(z ? 1 : null);
        if (this.commentTextView.getEditText().isFocused()) {
            AndroidUtilities.hideKeyboard(this.commentTextView.getEditText());
        }
        this.commentTextView.hidePopup(true);
        if (z) {
            this.frameLayout2.setVisibility(0);
            this.writeButtonContainer.setVisibility(0);
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            this.animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            FrameLayout frameLayout = this.writeButtonContainer;
            Property property = View.SCALE_X;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.2f;
            arrayList.add(ObjectAnimator.ofFloat(frameLayout, property, fArr));
            FrameLayout frameLayout2 = this.writeButtonContainer;
            Property property2 = View.SCALE_Y;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 1.0f : 0.2f;
            arrayList.add(ObjectAnimator.ofFloat(frameLayout2, property2, fArr2));
            FrameLayout frameLayout3 = this.writeButtonContainer;
            Property property3 = View.ALPHA;
            float[] fArr3 = new float[1];
            fArr3[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(frameLayout3, property3, fArr3));
            View view = this.selectedCountView;
            Property property4 = View.SCALE_X;
            float[] fArr4 = new float[1];
            fArr4[0] = z ? 1.0f : 0.2f;
            arrayList.add(ObjectAnimator.ofFloat(view, property4, fArr4));
            View view2 = this.selectedCountView;
            Property property5 = View.SCALE_Y;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? 1.0f : 0.2f;
            arrayList.add(ObjectAnimator.ofFloat(view2, property5, fArr5));
            View view3 = this.selectedCountView;
            Property property6 = View.ALPHA;
            float[] fArr6 = new float[1];
            fArr6[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(view3, property6, fArr6));
            FrameLayout frameLayout4 = this.frameLayout2;
            Property property7 = View.TRANSLATION_Y;
            float[] fArr7 = new float[1];
            fArr7[0] = z ? 0.0f : AndroidUtilities.m107dp(48);
            arrayList.add(ObjectAnimator.ofFloat(frameLayout4, property7, fArr7));
            View view4 = this.shadow;
            Property property8 = View.TRANSLATION_Y;
            float[] fArr8 = new float[1];
            if (!z) {
                f = AndroidUtilities.m107dp(48);
            }
            fArr8[0] = f;
            arrayList.add(ObjectAnimator.ofFloat(view4, property8, fArr8));
            this.animatorSet.playTogether(arrayList);
            this.animatorSet.setInterpolator(new DecelerateInterpolator());
            this.animatorSet.setDuration(180L);
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoPickerActivity.16
                {
                    PhotoPickerActivity.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(PhotoPickerActivity.this.animatorSet)) {
                        if (!z) {
                            PhotoPickerActivity.this.frameLayout2.setVisibility(4);
                            PhotoPickerActivity.this.writeButtonContainer.setVisibility(4);
                        }
                        PhotoPickerActivity.this.animatorSet = null;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (animator.equals(PhotoPickerActivity.this.animatorSet)) {
                        PhotoPickerActivity.this.animatorSet = null;
                    }
                }
            });
            this.animatorSet.start();
        } else {
            this.writeButtonContainer.setScaleX(z ? 1.0f : 0.2f);
            this.writeButtonContainer.setScaleY(z ? 1.0f : 0.2f);
            this.writeButtonContainer.setAlpha(z ? 1.0f : 0.0f);
            this.selectedCountView.setScaleX(z ? 1.0f : 0.2f);
            this.selectedCountView.setScaleY(z ? 1.0f : 0.2f);
            this.selectedCountView.setAlpha(z ? 1.0f : 0.0f);
            this.frameLayout2.setTranslationY(z ? 0.0f : AndroidUtilities.m107dp(48));
            View view5 = this.shadow;
            if (!z) {
                f = AndroidUtilities.m107dp(48);
            }
            view5.setTranslationY(f);
            if (!z) {
                this.frameLayout2.setVisibility(4);
                this.writeButtonContainer.setVisibility(4);
            }
        }
        return true;
    }

    public void setMaxSelectedPhotos(int i, boolean z) {
        this.maxSelectedPhotos = i;
        this.allowOrder = z;
        if (i <= 0 || this.type != 1) {
            return;
        }
        this.maxSelectedPhotos = 1;
    }

    public void updateCheckedPhotoIndices() {
        if (this.allowIndices) {
            int childCount = this.listView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof PhotoAttachPhotoCell) {
                    PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                    Integer num = (Integer) childAt.getTag();
                    MediaController.AlbumEntry albumEntry = this.selectedAlbum;
                    if (albumEntry != null) {
                        photoAttachPhotoCell.setNum(this.allowIndices ? this.selectedPhotosOrder.indexOf(Integer.valueOf(albumEntry.photos.get(num.intValue()).imageId)) : -1);
                    } else {
                        photoAttachPhotoCell.setNum(this.allowIndices ? this.selectedPhotosOrder.indexOf(this.searchResult.get(num.intValue()).f1533id) : -1);
                    }
                } else if (childAt instanceof SharedDocumentCell) {
                    ((SharedDocumentCell) childAt).setChecked(this.selectedPhotosOrder.indexOf(Integer.valueOf(this.selectedAlbum.photos.get(((Integer) childAt.getTag()).intValue()).imageId)) != 0, false);
                }
            }
        }
    }

    public PhotoAttachPhotoCell getCellForIndex(int i) {
        int childCount = this.listView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.listView.getChildAt(i2);
            if (childAt instanceof PhotoAttachPhotoCell) {
                PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) childAt;
                int intValue = ((Integer) photoAttachPhotoCell.getTag()).intValue();
                MediaController.AlbumEntry albumEntry = this.selectedAlbum;
                if (albumEntry == null ? !(intValue < 0 || intValue >= this.searchResult.size()) : !(intValue < 0 || intValue >= albumEntry.photos.size())) {
                    if (intValue == i) {
                        return photoAttachPhotoCell;
                    }
                }
            }
        }
        return null;
    }

    public int addToSelectedPhotos(Object obj, int i) {
        Object obj2;
        boolean z = obj instanceof MediaController.PhotoEntry;
        if (z) {
            obj2 = Integer.valueOf(((MediaController.PhotoEntry) obj).imageId);
        } else {
            obj2 = obj instanceof MediaController.SearchImage ? ((MediaController.SearchImage) obj).f1533id : null;
        }
        if (obj2 == null) {
            return -1;
        }
        if (this.selectedPhotos.containsKey(obj2)) {
            this.selectedPhotos.remove(obj2);
            int indexOf = this.selectedPhotosOrder.indexOf(obj2);
            if (indexOf >= 0) {
                this.selectedPhotosOrder.remove(indexOf);
            }
            if (this.allowIndices) {
                updateCheckedPhotoIndices();
            }
            if (i >= 0) {
                if (z) {
                    ((MediaController.PhotoEntry) obj).reset();
                } else if (obj instanceof MediaController.SearchImage) {
                    ((MediaController.SearchImage) obj).reset();
                }
                this.provider.updatePhotoAtIndex(i);
            }
            return indexOf;
        }
        this.selectedPhotos.put(obj2, obj);
        this.selectedPhotosOrder.add(obj2);
        return -1;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        ActionBarMenuItem actionBarMenuItem;
        if (!z || (actionBarMenuItem = this.searchItem) == null) {
            return;
        }
        AndroidUtilities.showKeyboard(actionBarMenuItem.getSearchField());
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null && editTextEmoji.isPopupShowing()) {
            this.commentTextView.hidePopup(true);
            return false;
        }
        return super.onBackPressed();
    }

    public void updatePhotosButton(int i) {
        if (this.selectedPhotos.size() == 0) {
            this.selectedCountView.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.selectedCountView.setPivotY(BitmapDescriptorFactory.HUE_RED);
            showCommentTextView(false, i != 0);
            return;
        }
        this.selectedCountView.invalidate();
        if (!showCommentTextView(true, i != 0) && i != 0) {
            this.selectedCountView.setPivotX(AndroidUtilities.m107dp(21));
            this.selectedCountView.setPivotY(AndroidUtilities.m107dp(12));
            AnimatorSet animatorSet = new AnimatorSet();
            Animator[] animatorArr = new Animator[2];
            View view = this.selectedCountView;
            Property property = View.SCALE_X;
            float[] fArr = new float[2];
            fArr[0] = i == 1 ? 1.1f : 0.9f;
            fArr[1] = 1.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
            View view2 = this.selectedCountView;
            Property property2 = View.SCALE_Y;
            float[] fArr2 = new float[2];
            fArr2[0] = i != 1 ? 0.9f : 1.1f;
            fArr2[1] = 1.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(view2, property2, fArr2);
            animatorSet.playTogether(animatorArr);
            animatorSet.setInterpolator(new OvershootInterpolator());
            animatorSet.setDuration(180L);
            animatorSet.start();
            return;
        }
        this.selectedCountView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.selectedCountView.setPivotY(BitmapDescriptorFactory.HUE_RED);
    }

    public void updateSearchInterface() {
        String str;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        if (this.searching || (this.recentSearches.size() > 0 && ((str = this.lastSearchString) == null || TextUtils.isEmpty(str)))) {
            this.emptyView.showProgress(true);
        } else {
            this.emptyView.showProgress(false);
        }
    }

    private void searchBotUser(final boolean z) {
        if (this.searchingUser) {
            return;
        }
        this.searchingUser = true;
        TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        tLRPC$TL_contacts_resolveUsername.username = z ? messagesController.gifSearchBot : messagesController.imageSearchBot;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PhotoPickerActivity.this.lambda$searchBotUser$10(z, tLObject, tLRPC$TL_error);
            }
        });
    }

    public /* synthetic */ void lambda$searchBotUser$10(final boolean z, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoPickerActivity.this.lambda$searchBotUser$9(tLObject, z);
                }
            });
        }
    }

    public /* synthetic */ void lambda$searchBotUser$9(TLObject tLObject, boolean z) {
        TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
        MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_contacts_resolvedPeer.users, false);
        MessagesController.getInstance(this.currentAccount).putChats(tLRPC$TL_contacts_resolvedPeer.chats, false);
        MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, tLRPC$TL_contacts_resolvedPeer.chats, true, true);
        String str = this.lastSearchImageString;
        this.lastSearchImageString = null;
        searchImages(z, str, "", false);
    }

    public void searchImages(final boolean z, final String str, String str2, boolean z2) {
        if (this.searching) {
            this.searching = false;
            if (this.imageReqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.imageReqId, true);
                this.imageReqId = 0;
            }
        }
        this.lastSearchImageString = str;
        this.searching = true;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        MessagesController messagesController2 = MessagesController.getInstance(this.currentAccount);
        TLObject userOrChat = messagesController.getUserOrChat(z ? messagesController2.gifSearchBot : messagesController2.imageSearchBot);
        if (!(userOrChat instanceof TLRPC$User)) {
            if (z2) {
                searchBotUser(z);
                return;
            }
            return;
        }
        final TLRPC$User tLRPC$User = (TLRPC$User) userOrChat;
        TLRPC$TL_messages_getInlineBotResults tLRPC$TL_messages_getInlineBotResults = new TLRPC$TL_messages_getInlineBotResults();
        tLRPC$TL_messages_getInlineBotResults.query = str == null ? "" : str;
        tLRPC$TL_messages_getInlineBotResults.bot = MessagesController.getInstance(this.currentAccount).getInputUser(tLRPC$User);
        tLRPC$TL_messages_getInlineBotResults.offset = str2;
        ChatActivity chatActivity = this.chatActivity;
        if (chatActivity != null) {
            long dialogId = chatActivity.getDialogId();
            if (DialogObject.isEncryptedDialog(dialogId)) {
                tLRPC$TL_messages_getInlineBotResults.peer = new TLRPC$TL_inputPeerEmpty();
            } else {
                tLRPC$TL_messages_getInlineBotResults.peer = getMessagesController().getInputPeer(dialogId);
            }
        } else {
            tLRPC$TL_messages_getInlineBotResults.peer = new TLRPC$TL_inputPeerEmpty();
        }
        final int i = this.lastSearchToken + 1;
        this.lastSearchToken = i;
        this.imageReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getInlineBotResults, new RequestDelegate() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PhotoPickerActivity.this.lambda$searchImages$12(str, i, z, tLRPC$User, tLObject, tLRPC$TL_error);
            }
        });
        ConnectionsManager.getInstance(this.currentAccount).bindRequestToGuid(this.imageReqId, this.classGuid);
    }

    public /* synthetic */ void lambda$searchImages$12(final String str, final int i, final boolean z, final TLRPC$User tLRPC$User, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoPickerActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                PhotoPickerActivity.this.lambda$searchImages$11(str, i, tLObject, z, tLRPC$User);
            }
        });
    }

    public /* synthetic */ void lambda$searchImages$11(String str, int i, TLObject tLObject, boolean z, TLRPC$User tLRPC$User) {
        int i2;
        TLRPC$Photo tLRPC$Photo;
        TLRPC$PhotoSize closestPhotoSizeWithSize;
        addToRecentSearches(str);
        if (i != this.lastSearchToken) {
            return;
        }
        int size = this.searchResult.size();
        if (tLObject != null) {
            TLRPC$messages_BotResults tLRPC$messages_BotResults = (TLRPC$messages_BotResults) tLObject;
            this.nextImagesSearchOffset = tLRPC$messages_BotResults.next_offset;
            int size2 = tLRPC$messages_BotResults.results.size();
            i2 = 0;
            for (int i3 = 0; i3 < size2; i3++) {
                TLRPC$BotInlineResult tLRPC$BotInlineResult = tLRPC$messages_BotResults.results.get(i3);
                if ((z || "photo".equals(tLRPC$BotInlineResult.type)) && ((!z || AnalyticsEvent.SendClip.typeGif.equals(tLRPC$BotInlineResult.type)) && !this.searchResultKeys.containsKey(tLRPC$BotInlineResult.f1600id))) {
                    MediaController.SearchImage searchImage = new MediaController.SearchImage();
                    if (z && tLRPC$BotInlineResult.document != null) {
                        for (int i4 = 0; i4 < tLRPC$BotInlineResult.document.attributes.size(); i4++) {
                            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$BotInlineResult.document.attributes.get(i4);
                            if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo)) {
                                searchImage.width = tLRPC$DocumentAttribute.f1613w;
                                searchImage.height = tLRPC$DocumentAttribute.f1612h;
                                break;
                            }
                        }
                        searchImage.document = tLRPC$BotInlineResult.document;
                        searchImage.size = 0;
                        TLRPC$Photo tLRPC$Photo2 = tLRPC$BotInlineResult.photo;
                        if (tLRPC$Photo2 != null && (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo2.sizes, this.itemSize, true)) != null) {
                            tLRPC$BotInlineResult.document.thumbs.add(closestPhotoSizeWithSize);
                            tLRPC$BotInlineResult.document.flags |= 1;
                        }
                    } else if (!z && (tLRPC$Photo = tLRPC$BotInlineResult.photo) != null) {
                        TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, AndroidUtilities.getPhotoSize());
                        TLRPC$PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(tLRPC$BotInlineResult.photo.sizes, 320);
                        if (closestPhotoSizeWithSize2 != null) {
                            searchImage.width = closestPhotoSizeWithSize2.f1634w;
                            searchImage.height = closestPhotoSizeWithSize2.f1633h;
                            searchImage.photoSize = closestPhotoSizeWithSize2;
                            searchImage.photo = tLRPC$BotInlineResult.photo;
                            searchImage.size = closestPhotoSizeWithSize2.size;
                            searchImage.thumbPhotoSize = closestPhotoSizeWithSize3;
                        }
                    } else if (tLRPC$BotInlineResult.content != null) {
                        int i5 = 0;
                        while (true) {
                            if (i5 >= tLRPC$BotInlineResult.content.attributes.size()) {
                                break;
                            }
                            TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = tLRPC$BotInlineResult.content.attributes.get(i5);
                            if (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeImageSize) {
                                searchImage.width = tLRPC$DocumentAttribute2.f1613w;
                                searchImage.height = tLRPC$DocumentAttribute2.f1612h;
                                break;
                            }
                            i5++;
                        }
                        TLRPC$WebDocument tLRPC$WebDocument = tLRPC$BotInlineResult.thumb;
                        if (tLRPC$WebDocument != null) {
                            searchImage.thumbUrl = tLRPC$WebDocument.url;
                        } else {
                            searchImage.thumbUrl = null;
                        }
                        TLRPC$WebDocument tLRPC$WebDocument2 = tLRPC$BotInlineResult.content;
                        searchImage.imageUrl = tLRPC$WebDocument2.url;
                        searchImage.size = z ? 0 : tLRPC$WebDocument2.size;
                    }
                    searchImage.f1533id = tLRPC$BotInlineResult.f1600id;
                    searchImage.type = z ? 1 : 0;
                    searchImage.inlineResult = tLRPC$BotInlineResult;
                    HashMap<String, String> hashMap = new HashMap<>();
                    searchImage.params = hashMap;
                    hashMap.put(TtmlNode.ATTR_ID, tLRPC$BotInlineResult.f1600id);
                    searchImage.params.put("query_id", "" + tLRPC$messages_BotResults.query_id);
                    searchImage.params.put("bot_name", UserObject.getPublicUsername(tLRPC$User));
                    this.searchResult.add(searchImage);
                    this.searchResultKeys.put(searchImage.f1533id, searchImage);
                    i2++;
                }
            }
            this.imageSearchEndReached = size == this.searchResult.size() || this.nextImagesSearchOffset == null;
        } else {
            i2 = 0;
        }
        this.searching = false;
        if (i2 != 0) {
            this.listAdapter.notifyItemRangeInserted(size, i2);
        } else if (this.imageSearchEndReached) {
            this.listAdapter.notifyItemRemoved(this.searchResult.size() - 1);
        }
        if (this.searchResult.size() <= 0) {
            this.emptyView.showProgress(false);
        }
    }

    public void setDelegate(PhotoPickerActivityDelegate photoPickerActivityDelegate) {
        this.delegate = photoPickerActivityDelegate;
    }

    public void setSearchDelegate(PhotoPickerActivitySearchDelegate photoPickerActivitySearchDelegate) {
        this.searchDelegate = photoPickerActivitySearchDelegate;
    }

    public void sendSelectedPhotos(boolean z, int i, String str, boolean z2) {
        if (this.selectedPhotos.isEmpty() || this.delegate == null || this.sendPressed) {
            return;
        }
        applyCaption();
        this.sendPressed = true;
        this.delegate.actionButtonPressed(false, z, i, str, z2);
        if (this.selectPhotoType != PhotoAlbumPickerActivity.SELECT_TYPE_WALLPAPER) {
            PhotoPickerActivityDelegate photoPickerActivityDelegate = this.delegate;
            if (photoPickerActivityDelegate == null || photoPickerActivityDelegate.canFinishFragment()) {
                finishFragment();
            }
        }
    }

    /* renamed from: org.telegram.ui.PhotoPickerActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        public ListAdapter(Context context) {
            PhotoPickerActivity.this = r1;
            this.mContext = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            if (PhotoPickerActivity.this.selectedAlbum == null) {
                return TextUtils.isEmpty(PhotoPickerActivity.this.lastSearchString) ? viewHolder.getItemViewType() == 3 : viewHolder.getAdapterPosition() < PhotoPickerActivity.this.searchResult.size();
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (PhotoPickerActivity.this.selectedAlbum == null) {
                if (PhotoPickerActivity.this.searchResult.isEmpty()) {
                    if (!TextUtils.isEmpty(PhotoPickerActivity.this.lastSearchString) || PhotoPickerActivity.this.recentSearches.isEmpty()) {
                        return 0;
                    }
                    return PhotoPickerActivity.this.recentSearches.size() + 2;
                }
                return PhotoPickerActivity.this.searchResult.size() + (!PhotoPickerActivity.this.imageSearchEndReached ? 1 : 0);
            }
            return PhotoPickerActivity.this.selectedAlbum.photos.size();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            FrameLayout frameLayout;
            TextCell textCell;
            if (i != 0) {
                if (i == 1) {
                    FrameLayout frameLayout2 = new FrameLayout(this.mContext);
                    frameLayout2.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                    RadialProgressView radialProgressView = new RadialProgressView(this.mContext);
                    radialProgressView.setProgressColor(-11371101);
                    frameLayout2.addView(radialProgressView, LayoutHelper.createFrame(-1, -1));
                    textCell = frameLayout2;
                } else if (i == 2) {
                    frameLayout = new SharedDocumentCell(this.mContext, 1);
                } else if (i == 3) {
                    TextCell textCell2 = new TextCell(this.mContext, 23, true);
                    textCell2.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                    textCell = textCell2;
                    if (PhotoPickerActivity.this.forceDarckTheme) {
                        textCell2.textView.setTextColor(Theme.getColor(PhotoPickerActivity.this.textKey));
                        textCell2.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_voipgroup_mutedIcon), PorterDuff.Mode.MULTIPLY));
                        textCell = textCell2;
                    }
                } else {
                    DividerCell dividerCell = new DividerCell(this.mContext);
                    dividerCell.setForceDarkTheme(PhotoPickerActivity.this.forceDarckTheme);
                    frameLayout = dividerCell;
                }
                frameLayout = textCell;
            } else {
                PhotoAttachPhotoCell photoAttachPhotoCell = new PhotoAttachPhotoCell(this.mContext, null);
                photoAttachPhotoCell.setDelegate(new PhotoAttachPhotoCell.PhotoAttachPhotoCellDelegate() { // from class: org.telegram.ui.PhotoPickerActivity.ListAdapter.1
                    {
                        ListAdapter.this = this;
                    }

                    private void checkSlowMode() {
                        TLRPC$Chat currentChat;
                        if (!PhotoPickerActivity.this.allowOrder || PhotoPickerActivity.this.chatActivity == null || (currentChat = PhotoPickerActivity.this.chatActivity.getCurrentChat()) == null || ChatObject.hasAdminRights(currentChat) || !currentChat.slowmode_enabled || PhotoPickerActivity.this.alertOnlyOnce == 2) {
                            return;
                        }
                        AlertsCreator.showSimpleAlert(PhotoPickerActivity.this, LocaleController.getString("Slowmode", C3632R.string.Slowmode), LocaleController.getString("SlowmodeSelectSendError", C3632R.string.SlowmodeSelectSendError));
                        if (PhotoPickerActivity.this.alertOnlyOnce == 1) {
                            PhotoPickerActivity.this.alertOnlyOnce = 2;
                        }
                    }

                    @Override // org.telegram.p043ui.Cells.PhotoAttachPhotoCell.PhotoAttachPhotoCellDelegate
                    public void onCheckClick(PhotoAttachPhotoCell photoAttachPhotoCell2) {
                        boolean z;
                        int intValue = ((Integer) photoAttachPhotoCell2.getTag()).intValue();
                        int i2 = -1;
                        if (PhotoPickerActivity.this.selectedAlbum != null) {
                            MediaController.PhotoEntry photoEntry = PhotoPickerActivity.this.selectedAlbum.photos.get(intValue);
                            z = !PhotoPickerActivity.this.selectedPhotos.containsKey(Integer.valueOf(photoEntry.imageId));
                            if (!z || PhotoPickerActivity.this.maxSelectedPhotos <= 0 || PhotoPickerActivity.this.selectedPhotos.size() < PhotoPickerActivity.this.maxSelectedPhotos) {
                                if (PhotoPickerActivity.this.allowIndices && z) {
                                    i2 = PhotoPickerActivity.this.selectedPhotosOrder.size();
                                }
                                photoAttachPhotoCell2.setChecked(i2, z, true);
                                PhotoPickerActivity.this.addToSelectedPhotos(photoEntry, intValue);
                            } else {
                                checkSlowMode();
                                return;
                            }
                        } else {
                            AndroidUtilities.hideKeyboard(PhotoPickerActivity.this.getParentActivity().getCurrentFocus());
                            MediaController.SearchImage searchImage = (MediaController.SearchImage) PhotoPickerActivity.this.searchResult.get(intValue);
                            z = !PhotoPickerActivity.this.selectedPhotos.containsKey(searchImage.f1533id);
                            if (!z || PhotoPickerActivity.this.maxSelectedPhotos <= 0 || PhotoPickerActivity.this.selectedPhotos.size() < PhotoPickerActivity.this.maxSelectedPhotos) {
                                if (PhotoPickerActivity.this.allowIndices && z) {
                                    i2 = PhotoPickerActivity.this.selectedPhotosOrder.size();
                                }
                                photoAttachPhotoCell2.setChecked(i2, z, true);
                                PhotoPickerActivity.this.addToSelectedPhotos(searchImage, intValue);
                            } else {
                                checkSlowMode();
                                return;
                            }
                        }
                        PhotoPickerActivity.this.updatePhotosButton(z ? 1 : 2);
                        PhotoPickerActivity.this.delegate.selectedPhotosChanged();
                    }
                });
                photoAttachPhotoCell.getCheckFrame().setVisibility(PhotoPickerActivity.this.selectPhotoType != PhotoAlbumPickerActivity.SELECT_TYPE_ALL ? 8 : 0);
                frameLayout = photoAttachPhotoCell;
            }
            return new RecyclerListView.Holder(frameLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            boolean isShowingImage;
            int itemViewType = viewHolder.getItemViewType();
            int i2 = 0;
            if (itemViewType == 0) {
                PhotoAttachPhotoCell photoAttachPhotoCell = (PhotoAttachPhotoCell) viewHolder.itemView;
                photoAttachPhotoCell.setItemSize(PhotoPickerActivity.this.itemSize);
                BackupImageView imageView = photoAttachPhotoCell.getImageView();
                photoAttachPhotoCell.setTag(Integer.valueOf(i));
                imageView.setOrientation(0, true);
                if (PhotoPickerActivity.this.selectedAlbum != null) {
                    MediaController.PhotoEntry photoEntry = PhotoPickerActivity.this.selectedAlbum.photos.get(i);
                    photoAttachPhotoCell.setPhotoEntry(photoEntry, true, false);
                    photoAttachPhotoCell.setChecked(PhotoPickerActivity.this.allowIndices ? PhotoPickerActivity.this.selectedPhotosOrder.indexOf(Integer.valueOf(photoEntry.imageId)) : -1, PhotoPickerActivity.this.selectedPhotos.containsKey(Integer.valueOf(photoEntry.imageId)), false);
                    isShowingImage = PhotoViewer.isShowingImage(photoEntry.path);
                } else {
                    MediaController.SearchImage searchImage = (MediaController.SearchImage) PhotoPickerActivity.this.searchResult.get(i);
                    photoAttachPhotoCell.setPhotoEntry(searchImage, true, false);
                    photoAttachPhotoCell.getVideoInfoContainer().setVisibility(4);
                    photoAttachPhotoCell.setChecked(PhotoPickerActivity.this.allowIndices ? PhotoPickerActivity.this.selectedPhotosOrder.indexOf(searchImage.f1533id) : -1, PhotoPickerActivity.this.selectedPhotos.containsKey(searchImage.f1533id), false);
                    isShowingImage = PhotoViewer.isShowingImage(searchImage.getPathToAttach());
                }
                imageView.getImageReceiver().setVisible(!isShowingImage, true);
                photoAttachPhotoCell.getCheckBox().setVisibility((PhotoPickerActivity.this.selectPhotoType != PhotoAlbumPickerActivity.SELECT_TYPE_ALL || isShowingImage) ? 8 : 8);
            } else if (itemViewType == 1) {
                ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.width = -1;
                    layoutParams.height = PhotoPickerActivity.this.itemSize;
                    viewHolder.itemView.setLayoutParams(layoutParams);
                }
            } else if (itemViewType == 2) {
                MediaController.PhotoEntry photoEntry2 = PhotoPickerActivity.this.selectedAlbum.photos.get(i);
                SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) viewHolder.itemView;
                sharedDocumentCell.setPhotoEntry(photoEntry2);
                sharedDocumentCell.setChecked(PhotoPickerActivity.this.selectedPhotos.containsKey(Integer.valueOf(photoEntry2.imageId)), false);
                sharedDocumentCell.setTag(Integer.valueOf(i));
            } else if (itemViewType != 3) {
            } else {
                TextCell textCell = (TextCell) viewHolder.itemView;
                if (i < PhotoPickerActivity.this.recentSearches.size()) {
                    textCell.setTextAndIcon((CharSequence) PhotoPickerActivity.this.recentSearches.get(i), C3632R.C3634drawable.msg_recent, false);
                } else {
                    textCell.setTextAndIcon((CharSequence) LocaleController.getString("ClearRecentHistory", C3632R.string.ClearRecentHistory), C3632R.C3634drawable.msg_clear_recent, false);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (PhotoPickerActivity.this.listSort) {
                return 2;
            }
            if (PhotoPickerActivity.this.selectedAlbum != null) {
                return 0;
            }
            return PhotoPickerActivity.this.searchResult.isEmpty() ? i == PhotoPickerActivity.this.recentSearches.size() ? 4 : 3 : i < PhotoPickerActivity.this.searchResult.size() ? 0 : 1;
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.sizeNotifierFrameLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, this.dialogBackgroundKey));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, this.dialogBackgroundKey));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, this.textKey));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, this.textKey));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, this.selectorKey));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCH, null, null, null, null, this.textKey));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCHPLACEHOLDER, null, null, null, null, Theme.key_chat_messagePanelHint));
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        arrayList.add(new ThemeDescription(actionBarMenuItem != null ? actionBarMenuItem.getSearchField() : null, ThemeDescription.FLAG_CURSORCOLOR, null, null, null, null, this.textKey));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, this.dialogBackgroundKey));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, null, new Drawable[]{Theme.chat_attachEmptyDrawable}, null, Theme.key_chat_attachEmptyImage));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, null, null, null, Theme.key_chat_attachPhotoBackground));
        return arrayList;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_windowBackgroundGray)) > 0.721f;
    }
}
