package org.telegram.p042ui.Stories;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Cells.ChatActionCell;
import org.telegram.p042ui.Cells.ChatMessageCell;
import org.telegram.p042ui.Cells.DialogCell;
import org.telegram.p042ui.Cells.ProfileSearchCell;
import org.telegram.p042ui.Cells.ReactedUserHolderView;
import org.telegram.p042ui.Cells.SharedPhotoVideoCell2;
import org.telegram.p042ui.Cells.UserCell;
import org.telegram.p042ui.Components.BackupImageView;
import org.telegram.p042ui.Components.BlurredRecyclerView;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.p042ui.Stories.DialogStoriesCell;
import org.telegram.p042ui.Stories.StoryViewer;
/* renamed from: org.telegram.ui.Stories.StoriesListPlaceProvider */
/* loaded from: classes6.dex */
public class StoriesListPlaceProvider implements StoryViewer.PlaceProvider {
    int[] clipPoint = new int[2];
    public boolean hasPaginationParams;
    public boolean hiddedStories;
    private boolean isHiddenArchive;
    LoadNextInterface loadNextInterface;
    public boolean onlySelfStories;
    public boolean onlyUnreadStories;
    private final RecyclerListView recyclerListView;

    /* renamed from: org.telegram.ui.Stories.StoriesListPlaceProvider$AvatarOverlaysView */
    /* loaded from: classes6.dex */
    public interface AvatarOverlaysView {
        boolean drawAvatarOverlays(Canvas canvas);
    }

    /* renamed from: org.telegram.ui.Stories.StoriesListPlaceProvider$ClippedView */
    /* loaded from: classes6.dex */
    public interface ClippedView {
        void updateClip(int[] iArr);
    }

    /* renamed from: org.telegram.ui.Stories.StoriesListPlaceProvider$LoadNextInterface */
    /* loaded from: classes6.dex */
    public interface LoadNextInterface {
        void loadNext(boolean z);
    }

    /* renamed from: of */
    public static StoriesListPlaceProvider m52of(RecyclerListView recyclerListView) {
        return m51of(recyclerListView, false);
    }

    /* renamed from: of */
    public static StoriesListPlaceProvider m51of(RecyclerListView recyclerListView, boolean z) {
        return new StoriesListPlaceProvider(recyclerListView, z);
    }

    public StoriesListPlaceProvider with(LoadNextInterface loadNextInterface) {
        this.loadNextInterface = loadNextInterface;
        return this;
    }

    public StoriesListPlaceProvider(RecyclerListView recyclerListView, boolean z) {
        this.recyclerListView = recyclerListView;
        this.isHiddenArchive = z;
    }

    @Override // org.telegram.p042ui.Stories.StoryViewer.PlaceProvider
    public void preLayout(long j, int i, Runnable runnable) {
        RecyclerListView recyclerListView = this.recyclerListView;
        if (recyclerListView != null && (recyclerListView.getParent() instanceof DialogStoriesCell)) {
            DialogStoriesCell dialogStoriesCell = (DialogStoriesCell) this.recyclerListView.getParent();
            if (dialogStoriesCell.scrollTo(j)) {
                dialogStoriesCell.afterNextLayout(runnable);
                return;
            } else {
                runnable.run();
                return;
            }
        }
        if (this.isHiddenArchive) {
            MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController().sortHiddenStories();
        }
        runnable.run();
    }

    @Override // org.telegram.p042ui.Stories.StoryViewer.PlaceProvider
    public boolean findView(long j, int i, int i2, int i3, StoryViewer.TransitionViewHolder transitionViewHolder) {
        transitionViewHolder.view = null;
        transitionViewHolder.avatarImage = null;
        transitionViewHolder.storyImage = null;
        transitionViewHolder.drawAbove = null;
        RecyclerListView recyclerListView = this.recyclerListView;
        if (recyclerListView == null) {
            return false;
        }
        DialogStoriesCell dialogStoriesCell = recyclerListView.getParent() instanceof DialogStoriesCell ? (DialogStoriesCell) this.recyclerListView.getParent() : null;
        RecyclerListView recyclerListView2 = this.recyclerListView;
        if (dialogStoriesCell != null && !dialogStoriesCell.isExpanded()) {
            recyclerListView2 = dialogStoriesCell.listViewMini;
        }
        for (int i4 = 0; i4 < recyclerListView2.getChildCount(); i4++) {
            View childAt = recyclerListView2.getChildAt(i4);
            if (childAt instanceof DialogStoriesCell.StoryCell) {
                DialogStoriesCell.StoryCell storyCell = (DialogStoriesCell.StoryCell) childAt;
                if (storyCell.dialogId == j) {
                    transitionViewHolder.view = childAt;
                    transitionViewHolder.avatarImage = storyCell.avatarImage;
                    transitionViewHolder.params = storyCell.params;
                    transitionViewHolder.radialProgressUpload = storyCell.radialProgress;
                    DialogStoriesCell dialogStoriesCell2 = (DialogStoriesCell) storyCell.getParent().getParent();
                    transitionViewHolder.clipParent = dialogStoriesCell2;
                    transitionViewHolder.clipBottom = BitmapDescriptorFactory.HUE_RED;
                    transitionViewHolder.clipTop = BitmapDescriptorFactory.HUE_RED;
                    transitionViewHolder.alpha = 1.0f;
                    if (storyCell.isFail && dialogStoriesCell2.isExpanded()) {
                        final Path path = new Path();
                        transitionViewHolder.drawClip = new StoryViewer.HolderClip() { // from class: org.telegram.ui.Stories.StoriesListPlaceProvider$$ExternalSyntheticLambda0
                            @Override // org.telegram.p042ui.Stories.StoryViewer.HolderClip
                            public final void clip(Canvas canvas, RectF rectF, float f, boolean z) {
                                StoriesListPlaceProvider.lambda$findView$0(path, canvas, rectF, f, z);
                            }
                        };
                    } else {
                        transitionViewHolder.drawClip = null;
                    }
                    return true;
                }
            } else if (childAt instanceof DialogCell) {
                DialogCell dialogCell = (DialogCell) childAt;
                if ((dialogCell.getDialogId() == j && !this.isHiddenArchive) || (this.isHiddenArchive && dialogCell.isDialogFolder())) {
                    transitionViewHolder.view = childAt;
                    transitionViewHolder.params = dialogCell.storyParams;
                    transitionViewHolder.avatarImage = dialogCell.avatarImage;
                    transitionViewHolder.clipParent = (View) dialogCell.getParent();
                    if (this.isHiddenArchive) {
                        transitionViewHolder.crossfadeToAvatarImage = dialogCell.avatarImage;
                    }
                    transitionViewHolder.alpha = 1.0f;
                    updateClip(transitionViewHolder);
                    return true;
                }
            } else if (childAt instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                if (chatMessageCell.getMessageObject().getId() == i) {
                    transitionViewHolder.view = childAt;
                    if (i3 == 1 || i3 == 2) {
                        transitionViewHolder.storyImage = chatMessageCell.getPhotoImage();
                    } else {
                        transitionViewHolder.storyImage = chatMessageCell.replyImageReceiver;
                    }
                    transitionViewHolder.clipParent = (View) chatMessageCell.getParent();
                    transitionViewHolder.alpha = 1.0f;
                    updateClip(transitionViewHolder);
                    return true;
                }
            } else if (childAt instanceof ChatActionCell) {
                ChatActionCell chatActionCell = (ChatActionCell) childAt;
                if (chatActionCell.getMessageObject().getId() == i) {
                    transitionViewHolder.view = childAt;
                    if (chatActionCell.getMessageObject().messageOwner.media.storyItem.noforwards) {
                        transitionViewHolder.avatarImage = chatActionCell.getPhotoImage();
                    } else {
                        transitionViewHolder.storyImage = chatActionCell.getPhotoImage();
                    }
                    transitionViewHolder.clipParent = (View) chatActionCell.getParent();
                    transitionViewHolder.alpha = 1.0f;
                    updateClip(transitionViewHolder);
                    return true;
                }
            } else if (childAt instanceof SharedPhotoVideoCell2) {
                final SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) childAt;
                MessageObject messageObject = sharedPhotoVideoCell2.getMessageObject();
                if ((sharedPhotoVideoCell2.getStyle() == 1 && sharedPhotoVideoCell2.storyId == i2) || (messageObject != null && messageObject.isStory() && messageObject.getId() == i2 && messageObject.storyItem.dialogId == j)) {
                    final RecyclerListView.FastScroll fastScroll = recyclerListView2.getFastScroll();
                    final int[] iArr = new int[2];
                    if (fastScroll != null) {
                        fastScroll.getLocationInWindow(iArr);
                    }
                    transitionViewHolder.view = childAt;
                    transitionViewHolder.storyImage = sharedPhotoVideoCell2.imageReceiver;
                    transitionViewHolder.drawAbove = new StoryViewer.HolderDrawAbove() { // from class: org.telegram.ui.Stories.StoriesListPlaceProvider$$ExternalSyntheticLambda1
                        @Override // org.telegram.p042ui.Stories.StoryViewer.HolderDrawAbove
                        public final void draw(Canvas canvas, RectF rectF, float f, boolean z) {
                            StoriesListPlaceProvider.lambda$findView$1(SharedPhotoVideoCell2.this, fastScroll, iArr, canvas, rectF, f, z);
                        }
                    };
                    transitionViewHolder.clipParent = (View) sharedPhotoVideoCell2.getParent();
                    transitionViewHolder.alpha = 1.0f;
                    updateClip(transitionViewHolder);
                    return true;
                }
            } else if (childAt instanceof UserCell) {
                UserCell userCell = (UserCell) childAt;
                if (userCell.getDialogId() == j) {
                    BackupImageView backupImageView = userCell.avatarImageView;
                    transitionViewHolder.view = backupImageView;
                    transitionViewHolder.params = userCell.storyParams;
                    transitionViewHolder.avatarImage = backupImageView.getImageReceiver();
                    transitionViewHolder.clipParent = (View) userCell.getParent();
                    transitionViewHolder.alpha = 1.0f;
                    updateClip(transitionViewHolder);
                    return true;
                }
            } else if (childAt instanceof ReactedUserHolderView) {
                ReactedUserHolderView reactedUserHolderView = (ReactedUserHolderView) childAt;
                if (reactedUserHolderView.dialogId == j) {
                    BackupImageView backupImageView2 = reactedUserHolderView.avatarView;
                    transitionViewHolder.view = backupImageView2;
                    transitionViewHolder.params = reactedUserHolderView.params;
                    transitionViewHolder.avatarImage = backupImageView2.getImageReceiver();
                    transitionViewHolder.clipParent = (View) reactedUserHolderView.getParent();
                    float alpha = reactedUserHolderView.getAlpha() * reactedUserHolderView.getAlphaInternal();
                    transitionViewHolder.alpha = alpha;
                    if (alpha < 1.0f) {
                        Paint paint = new Paint(1);
                        transitionViewHolder.bgPaint = paint;
                        paint.setColor(Theme.getColor(Theme.key_dialogBackground, reactedUserHolderView.getResourcesProvider()));
                    }
                    updateClip(transitionViewHolder);
                    return true;
                }
            } else if (childAt instanceof ProfileSearchCell) {
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) childAt;
                if (profileSearchCell.getDialogId() == j) {
                    transitionViewHolder.view = profileSearchCell;
                    transitionViewHolder.params = profileSearchCell.avatarStoryParams;
                    transitionViewHolder.avatarImage = profileSearchCell.avatarImage;
                    transitionViewHolder.clipParent = (View) profileSearchCell.getParent();
                    transitionViewHolder.alpha = 1.0f;
                    updateClip(transitionViewHolder);
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$findView$0(Path path, Canvas canvas, RectF rectF, float f, boolean z) {
        if (z) {
            return;
        }
        path.rewind();
        float pow = (float) Math.pow(f, 2.0d);
        path.addCircle((rectF.right + AndroidUtilities.m102dp(7)) - (AndroidUtilities.m102dp(14) * pow), (rectF.bottom + AndroidUtilities.m102dp(7)) - (AndroidUtilities.m102dp(14) * pow), AndroidUtilities.m102dp(11), Path.Direction.CW);
        canvas.clipPath(path, Region.Op.DIFFERENCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$findView$1(SharedPhotoVideoCell2 sharedPhotoVideoCell2, RecyclerListView.FastScroll fastScroll, int[] iArr, Canvas canvas, RectF rectF, float f, boolean z) {
        sharedPhotoVideoCell2.drawDuration(canvas, rectF, f);
        if (fastScroll != null && fastScroll.isVisible && fastScroll.getVisibility() == 0) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, canvas.getWidth(), canvas.getHeight(), (int) (f * 255.0f), 31);
            canvas.translate(iArr[0], iArr[1]);
            fastScroll.draw(canvas);
            canvas.restore();
        }
    }

    private void updateClip(StoryViewer.TransitionViewHolder transitionViewHolder) {
        View view = transitionViewHolder.clipParent;
        if (view == null) {
            return;
        }
        if (view instanceof ClippedView) {
            ((ClippedView) view).updateClip(this.clipPoint);
            int[] iArr = this.clipPoint;
            transitionViewHolder.clipTop = iArr[0];
            transitionViewHolder.clipBottom = iArr[1];
        } else if (view instanceof BlurredRecyclerView) {
            transitionViewHolder.clipTop = ((BlurredRecyclerView) view).blurTopPadding;
            transitionViewHolder.clipBottom = view.getMeasuredHeight() - transitionViewHolder.clipParent.getPaddingBottom();
        } else {
            transitionViewHolder.clipTop = view.getPaddingTop();
            transitionViewHolder.clipBottom = transitionViewHolder.clipParent.getMeasuredHeight() - transitionViewHolder.clipParent.getPaddingBottom();
        }
    }

    @Override // org.telegram.p042ui.Stories.StoryViewer.PlaceProvider
    public void loadNext(boolean z) {
        LoadNextInterface loadNextInterface = this.loadNextInterface;
        if (loadNextInterface != null) {
            loadNextInterface.loadNext(z);
        }
    }

    public StoryViewer.PlaceProvider setPaginationParaments(boolean z, boolean z2, boolean z3) {
        this.hiddedStories = z;
        this.onlyUnreadStories = z2;
        this.onlySelfStories = z3;
        this.hasPaginationParams = true;
        return this;
    }
}
