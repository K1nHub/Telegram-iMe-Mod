package org.telegram.p043ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.GroupCallUserCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.voip.GroupCallMiniTextureView;
import org.telegram.p043ui.Components.voip.GroupCallRenderersContainer;
import org.telegram.p043ui.Components.voip.GroupCallStatusIcon;
import org.telegram.p043ui.GroupCallActivity;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_groupCallParticipant;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.GroupCallFullscreenAdapter */
/* loaded from: classes6.dex */
public class GroupCallFullscreenAdapter extends RecyclerListView.SelectionAdapter {
    private final GroupCallActivity activity;
    private ArrayList<GroupCallMiniTextureView> attachedRenderers;
    private final int currentAccount;
    private ChatObject.Call groupCall;
    private GroupCallRenderersContainer renderersContainer;
    private final ArrayList<ChatObject.VideoParticipant> videoParticipants = new ArrayList<>();
    private final ArrayList<TLRPC$TL_groupCallParticipant> participants = new ArrayList<>();
    private boolean visible = false;

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return false;
    }

    public GroupCallFullscreenAdapter(ChatObject.Call call, int i, GroupCallActivity groupCallActivity) {
        this.groupCall = call;
        this.currentAccount = i;
        this.activity = groupCallActivity;
    }

    public void setRenderersPool(ArrayList<GroupCallMiniTextureView> arrayList, GroupCallRenderersContainer groupCallRenderersContainer) {
        this.attachedRenderers = arrayList;
        this.renderersContainer = groupCallRenderersContainer;
    }

    public void setGroupCall(ChatObject.Call call) {
        this.groupCall = call;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new RecyclerListView.Holder(new GroupCallUserCell(viewGroup.getContext()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ChatObject.VideoParticipant videoParticipant;
        TLRPC$TL_groupCallParticipant tLRPC$TL_groupCallParticipant;
        GroupCallUserCell groupCallUserCell = (GroupCallUserCell) viewHolder.itemView;
        ChatObject.VideoParticipant videoParticipant2 = groupCallUserCell.videoParticipant;
        if (i < this.videoParticipants.size()) {
            videoParticipant = this.videoParticipants.get(i);
            tLRPC$TL_groupCallParticipant = this.videoParticipants.get(i).participant;
        } else if (i - this.videoParticipants.size() >= this.participants.size()) {
            return;
        } else {
            videoParticipant = null;
            tLRPC$TL_groupCallParticipant = this.participants.get(i - this.videoParticipants.size());
        }
        groupCallUserCell.setParticipant(videoParticipant, tLRPC$TL_groupCallParticipant);
        if (videoParticipant2 != null && !videoParticipant2.equals(videoParticipant) && groupCallUserCell.attached && groupCallUserCell.getRenderer() != null) {
            groupCallUserCell.attachRenderer(false);
            if (videoParticipant != null) {
                groupCallUserCell.attachRenderer(true);
            }
        } else if (groupCallUserCell.attached) {
            if (groupCallUserCell.getRenderer() == null && videoParticipant != null && this.visible) {
                groupCallUserCell.attachRenderer(true);
            } else if (groupCallUserCell.getRenderer() == null || videoParticipant != null) {
            } else {
                groupCallUserCell.attachRenderer(false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.videoParticipants.size() + this.participants.size();
    }

    public void setVisibility(RecyclerListView recyclerListView, boolean z) {
        this.visible = z;
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            View childAt = recyclerListView.getChildAt(i);
            if (childAt instanceof GroupCallUserCell) {
                GroupCallUserCell groupCallUserCell = (GroupCallUserCell) childAt;
                if (groupCallUserCell.getVideoParticipant() != null) {
                    groupCallUserCell.attachRenderer(z);
                }
            }
        }
    }

    public void scrollTo(ChatObject.VideoParticipant videoParticipant, RecyclerListView recyclerListView) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerListView.getLayoutManager();
        if (linearLayoutManager == null) {
            return;
        }
        for (int i = 0; i < this.videoParticipants.size(); i++) {
            if (this.videoParticipants.get(i).equals(videoParticipant)) {
                linearLayoutManager.scrollToPositionWithOffset(i, AndroidUtilities.m107dp(13));
                return;
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.GroupCallFullscreenAdapter$GroupCallUserCell */
    /* loaded from: classes6.dex */
    public class GroupCallUserCell extends FrameLayout implements GroupCallStatusIcon.Callback {
        boolean attached;
        AvatarDrawable avatarDrawable;
        private BackupImageView avatarImageView;
        GroupCallUserCell.AvatarWavesDrawable avatarWavesDrawable;
        Paint backgroundPaint;
        ValueAnimator colorAnimator;
        private TLRPC$Chat currentChat;
        private TLRPC$User currentUser;
        String drawingName;
        int lastColor;
        int lastWavesColor;
        RLottieImageView muteButton;
        String name;
        int nameWidth;
        TLRPC$TL_groupCallParticipant participant;
        long peerId;
        float progress;
        GroupCallMiniTextureView renderer;
        boolean selected;
        Paint selectionPaint;
        float selectionProgress;
        boolean skipInvalidate;
        GroupCallStatusIcon statusIcon;
        TextPaint textPaint;
        ChatObject.VideoParticipant videoParticipant;

        public GroupCallUserCell(Context context) {
            super(context);
            this.avatarDrawable = new AvatarDrawable();
            this.backgroundPaint = new Paint(1);
            this.selectionPaint = new Paint(1);
            this.progress = 1.0f;
            this.textPaint = new TextPaint(1);
            this.avatarWavesDrawable = new GroupCallUserCell.AvatarWavesDrawable(AndroidUtilities.m107dp(26), AndroidUtilities.m107dp(29));
            this.avatarDrawable.setTextSize((int) (AndroidUtilities.m107dp(18) / 1.15f));
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarImageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m107dp(20));
            addView(this.avatarImageView, LayoutHelper.createFrame(40, 40, 1, 0, 9, 0, 9));
            setWillNotDraw(false);
            this.backgroundPaint.setColor(Theme.getColor(Theme.key_voipgroup_listViewBackground));
            this.selectionPaint.setColor(Theme.getColor(Theme.key_voipgroup_speakingText));
            this.selectionPaint.setStyle(Paint.Style.STROKE);
            this.selectionPaint.setStrokeWidth(AndroidUtilities.m107dp(2));
            this.textPaint.setColor(-1);
            RLottieImageView rLottieImageView = new RLottieImageView(context, GroupCallFullscreenAdapter.this) { // from class: org.telegram.ui.Components.GroupCallFullscreenAdapter.GroupCallUserCell.1
                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    GroupCallUserCell.this.invalidate();
                }
            };
            this.muteButton = rLottieImageView;
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.muteButton, LayoutHelper.createFrame(24, 24));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            this.textPaint.setTextSize(AndroidUtilities.m107dp(12));
            if (this.name != null) {
                int min = (int) Math.min(AndroidUtilities.m107dp(46), this.textPaint.measureText(this.name));
                this.nameWidth = min;
                this.drawingName = TextUtils.ellipsize(this.name, this.textPaint, min, TextUtils.TruncateAt.END).toString();
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(80), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(80), 1073741824));
        }

        public void setParticipant(ChatObject.VideoParticipant videoParticipant, TLRPC$TL_groupCallParticipant tLRPC$TL_groupCallParticipant) {
            this.videoParticipant = videoParticipant;
            this.participant = tLRPC$TL_groupCallParticipant;
            long j = this.peerId;
            long peerId = MessageObject.getPeerId(tLRPC$TL_groupCallParticipant.peer);
            this.peerId = peerId;
            if (peerId > 0) {
                this.currentUser = AccountInstance.getInstance(GroupCallFullscreenAdapter.this.currentAccount).getMessagesController().getUser(Long.valueOf(this.peerId));
                this.currentChat = null;
                this.avatarDrawable.setInfo(GroupCallFullscreenAdapter.this.currentAccount, this.currentUser);
                this.name = UserObject.getFirstName(this.currentUser);
                this.avatarImageView.getImageReceiver().setCurrentAccount(GroupCallFullscreenAdapter.this.currentAccount);
                this.avatarImageView.setImage(ImageLocation.getForUser(this.currentUser, 1), "50_50", this.avatarDrawable, this.currentUser);
            } else {
                this.currentChat = AccountInstance.getInstance(GroupCallFullscreenAdapter.this.currentAccount).getMessagesController().getChat(Long.valueOf(-this.peerId));
                this.currentUser = null;
                this.avatarDrawable.setInfo(GroupCallFullscreenAdapter.this.currentAccount, this.currentChat);
                TLRPC$Chat tLRPC$Chat = this.currentChat;
                if (tLRPC$Chat != null) {
                    this.name = tLRPC$Chat.title;
                    this.avatarImageView.getImageReceiver().setCurrentAccount(GroupCallFullscreenAdapter.this.currentAccount);
                    this.avatarImageView.setImage(ImageLocation.getForChat(this.currentChat, 1), "50_50", this.avatarDrawable, this.currentChat);
                }
            }
            boolean z = j == this.peerId;
            if (videoParticipant == null) {
                this.selected = GroupCallFullscreenAdapter.this.renderersContainer.fullscreenPeerId == MessageObject.getPeerId(tLRPC$TL_groupCallParticipant.peer);
            } else if (GroupCallFullscreenAdapter.this.renderersContainer.fullscreenParticipant != null) {
                this.selected = GroupCallFullscreenAdapter.this.renderersContainer.fullscreenParticipant.equals(videoParticipant);
            } else {
                this.selected = false;
            }
            if (!z) {
                setSelectedProgress(this.selected ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            }
            GroupCallStatusIcon groupCallStatusIcon = this.statusIcon;
            if (groupCallStatusIcon != null) {
                groupCallStatusIcon.setParticipant(tLRPC$TL_groupCallParticipant, z);
                updateState(z);
            }
        }

        @Override // android.view.View
        public void setAlpha(float f) {
            super.setAlpha(f);
        }

        public void setProgressToFullscreen(float f) {
            if (this.progress == f) {
                return;
            }
            this.progress = f;
            if (f == 1.0f) {
                this.avatarImageView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                this.avatarImageView.setScaleX(1.0f);
                this.avatarImageView.setScaleY(1.0f);
                this.backgroundPaint.setAlpha(255);
                invalidate();
                GroupCallMiniTextureView groupCallMiniTextureView = this.renderer;
                if (groupCallMiniTextureView != null) {
                    groupCallMiniTextureView.invalidate();
                    return;
                }
                return;
            }
            float top = (this.avatarImageView.getTop() + (this.avatarImageView.getMeasuredHeight() / 2.0f)) - (getMeasuredHeight() / 2.0f);
            float f2 = 1.0f - f;
            float m107dp = ((AndroidUtilities.m107dp(46) / AndroidUtilities.m107dp(40)) * f2) + (1.0f * f);
            this.avatarImageView.setTranslationY((-top) * f2);
            this.avatarImageView.setScaleX(m107dp);
            this.avatarImageView.setScaleY(m107dp);
            this.backgroundPaint.setAlpha((int) (f * 255.0f));
            invalidate();
            GroupCallMiniTextureView groupCallMiniTextureView2 = this.renderer;
            if (groupCallMiniTextureView2 != null) {
                groupCallMiniTextureView2.invalidate();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            GroupCallMiniTextureView groupCallMiniTextureView = this.renderer;
            if (groupCallMiniTextureView != null && groupCallMiniTextureView.isFullyVisible() && !GroupCallFullscreenAdapter.this.activity.drawingForBlur) {
                drawSelection(canvas);
                return;
            }
            if (this.progress > BitmapDescriptorFactory.HUE_RED) {
                float measuredWidth = (getMeasuredWidth() / 2.0f) * (1.0f - this.progress);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(measuredWidth, measuredWidth, getMeasuredWidth() - measuredWidth, getMeasuredHeight() - measuredWidth);
                canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(13), this.backgroundPaint);
                drawSelection(canvas);
            }
            float x = this.avatarImageView.getX() + (this.avatarImageView.getMeasuredWidth() / 2);
            float y = this.avatarImageView.getY() + (this.avatarImageView.getMeasuredHeight() / 2);
            this.avatarWavesDrawable.update();
            this.avatarWavesDrawable.draw(canvas, x, y, this);
            float m107dp = AndroidUtilities.m107dp(46) / AndroidUtilities.m107dp(40);
            float f = this.progress;
            float f2 = (m107dp * (1.0f - f)) + (f * 1.0f);
            this.avatarImageView.setScaleX(this.avatarWavesDrawable.getAvatarScale() * f2);
            this.avatarImageView.setScaleY(this.avatarWavesDrawable.getAvatarScale() * f2);
            super.dispatchDraw(canvas);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void drawSelection(android.graphics.Canvas r7) {
            /*
                r6 = this;
                boolean r0 = r6.selected
                r1 = 1037726734(0x3dda740e, float:0.10666667)
                r2 = 0
                r3 = 1065353216(0x3f800000, float:1.0)
                if (r0 == 0) goto L1e
                float r4 = r6.selectionProgress
                int r5 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
                if (r5 == 0) goto L1e
                float r4 = r4 + r1
                int r0 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
                if (r0 <= 0) goto L17
                r4 = r3
                goto L1a
            L17:
                r6.invalidate()
            L1a:
                r6.setSelectedProgress(r4)
                goto L33
            L1e:
                if (r0 != 0) goto L33
                float r0 = r6.selectionProgress
                int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r4 == 0) goto L33
                float r0 = r0 - r1
                int r1 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r1 >= 0) goto L2d
                r0 = r2
                goto L30
            L2d:
                r6.invalidate()
            L30:
                r6.setSelectedProgress(r0)
            L33:
                float r0 = r6.selectionProgress
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 <= 0) goto L78
                int r0 = r6.getMeasuredWidth()
                float r0 = (float) r0
                r1 = 1073741824(0x40000000, float:2.0)
                float r0 = r0 / r1
                float r2 = r6.progress
                float r3 = r3 - r2
                float r0 = r0 * r3
                android.graphics.RectF r2 = org.telegram.messenger.AndroidUtilities.rectTmp
                int r3 = r6.getMeasuredWidth()
                float r3 = (float) r3
                float r3 = r3 - r0
                int r4 = r6.getMeasuredHeight()
                float r4 = (float) r4
                float r4 = r4 - r0
                r2.set(r0, r0, r3, r4)
                android.graphics.Paint r0 = r6.selectionPaint
                float r0 = r0.getStrokeWidth()
                float r0 = r0 / r1
                android.graphics.Paint r3 = r6.selectionPaint
                float r3 = r3.getStrokeWidth()
                float r3 = r3 / r1
                r2.inset(r0, r3)
                r0 = 12
                int r1 = org.telegram.messenger.AndroidUtilities.m107dp(r0)
                float r1 = (float) r1
                int r0 = org.telegram.messenger.AndroidUtilities.m107dp(r0)
                float r0 = (float) r0
                android.graphics.Paint r3 = r6.selectionPaint
                r7.drawRoundRect(r2, r1, r0, r3)
            L78:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.GroupCallFullscreenAdapter.GroupCallUserCell.drawSelection(android.graphics.Canvas):void");
        }

        private void setSelectedProgress(float f) {
            if (this.selectionProgress != f) {
                this.selectionProgress = f;
                this.selectionPaint.setAlpha((int) (f * 255.0f));
            }
        }

        public long getPeerId() {
            return this.peerId;
        }

        public BackupImageView getAvatarImageView() {
            return this.avatarImageView;
        }

        public TLRPC$TL_groupCallParticipant getParticipant() {
            return this.participant;
        }

        public ChatObject.VideoParticipant getVideoParticipant() {
            return this.videoParticipant;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (GroupCallFullscreenAdapter.this.visible && this.videoParticipant != null) {
                attachRenderer(true);
            }
            this.attached = true;
            if (GroupCallFullscreenAdapter.this.activity.statusIconPool.size() > 0) {
                this.statusIcon = GroupCallFullscreenAdapter.this.activity.statusIconPool.remove(GroupCallFullscreenAdapter.this.activity.statusIconPool.size() - 1);
            } else {
                this.statusIcon = new GroupCallStatusIcon();
            }
            this.statusIcon.setCallback(this);
            this.statusIcon.setImageView(this.muteButton);
            this.statusIcon.setParticipant(this.participant, false);
            updateState(false);
            this.avatarWavesDrawable.setShowWaves(this.statusIcon.isSpeaking(), this);
            if (this.statusIcon.isSpeaking()) {
                return;
            }
            this.avatarWavesDrawable.setAmplitude(0.0d);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            attachRenderer(false);
            this.attached = false;
            if (this.statusIcon != null) {
                GroupCallFullscreenAdapter.this.activity.statusIconPool.add(this.statusIcon);
                this.statusIcon.setImageView(null);
                this.statusIcon.setCallback(null);
            }
            this.statusIcon = null;
        }

        public void attachRenderer(boolean z) {
            if (GroupCallFullscreenAdapter.this.activity.isDismissed()) {
                return;
            }
            if (z && this.renderer == null) {
                this.renderer = GroupCallMiniTextureView.getOrCreate(GroupCallFullscreenAdapter.this.attachedRenderers, GroupCallFullscreenAdapter.this.renderersContainer, null, this, null, this.videoParticipant, GroupCallFullscreenAdapter.this.groupCall, GroupCallFullscreenAdapter.this.activity);
            } else if (z) {
            } else {
                GroupCallMiniTextureView groupCallMiniTextureView = this.renderer;
                if (groupCallMiniTextureView != null) {
                    groupCallMiniTextureView.setSecondaryView(null);
                }
                this.renderer = null;
            }
        }

        public void setRenderer(GroupCallMiniTextureView groupCallMiniTextureView) {
            this.renderer = groupCallMiniTextureView;
        }

        public void drawOverlays(Canvas canvas) {
            if (this.drawingName != null) {
                canvas.save();
                int measuredWidth = ((getMeasuredWidth() - this.nameWidth) - AndroidUtilities.m107dp(24)) / 2;
                this.textPaint.setAlpha((int) (this.progress * 255.0f * getAlpha()));
                canvas.drawText(this.drawingName, AndroidUtilities.m107dp(22) + measuredWidth, AndroidUtilities.m107dp(69), this.textPaint);
                canvas.restore();
                canvas.save();
                canvas.translate(measuredWidth, AndroidUtilities.m107dp(53));
                if (this.muteButton.getDrawable() != null) {
                    this.muteButton.getDrawable().setAlpha((int) (this.progress * 255.0f * getAlpha()));
                    this.muteButton.draw(canvas);
                    this.muteButton.getDrawable().setAlpha(255);
                }
                canvas.restore();
            }
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == this.muteButton) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        public float getProgressToFullscreen() {
            return this.progress;
        }

        public GroupCallMiniTextureView getRenderer() {
            return this.renderer;
        }

        public void setAmplitude(double d) {
            GroupCallStatusIcon groupCallStatusIcon = this.statusIcon;
            if (groupCallStatusIcon != null) {
                groupCallStatusIcon.setAmplitude(d);
            }
            this.avatarWavesDrawable.setAmplitude(d);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x006c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void updateState(boolean r10) {
            /*
                r9 = this;
                org.telegram.ui.Components.voip.GroupCallStatusIcon r0 = r9.statusIcon
                if (r0 != 0) goto L5
                return
            L5:
                r0.updateIcon(r10)
                org.telegram.ui.Components.voip.GroupCallStatusIcon r0 = r9.statusIcon
                boolean r0 = r0.isMutedByMe()
                if (r0 == 0) goto L18
                int r0 = org.telegram.p043ui.ActionBar.Theme.key_voipgroup_mutedByAdminIcon
                int r0 = org.telegram.p043ui.ActionBar.Theme.getColor(r0)
            L16:
                r1 = r0
                goto L33
            L18:
                org.telegram.ui.Components.voip.GroupCallStatusIcon r0 = r9.statusIcon
                boolean r0 = r0.isSpeaking()
                if (r0 == 0) goto L27
                int r0 = org.telegram.p043ui.ActionBar.Theme.key_voipgroup_speakingText
                int r0 = org.telegram.p043ui.ActionBar.Theme.getColor(r0)
                goto L16
            L27:
                int r0 = org.telegram.p043ui.ActionBar.Theme.key_voipgroup_nameText
                int r0 = org.telegram.p043ui.ActionBar.Theme.getColor(r0)
                int r1 = org.telegram.p043ui.ActionBar.Theme.key_voipgroup_listeningText
                int r1 = org.telegram.p043ui.ActionBar.Theme.getColor(r1)
            L33:
                if (r10 != 0) goto L6c
                android.animation.ValueAnimator r10 = r9.colorAnimator
                if (r10 == 0) goto L41
                r10.removeAllListeners()
                android.animation.ValueAnimator r10 = r9.colorAnimator
                r10.cancel()
            L41:
                r9.lastColor = r0
                r9.lastWavesColor = r1
                org.telegram.ui.Components.RLottieImageView r10 = r9.muteButton
                android.graphics.PorterDuffColorFilter r2 = new android.graphics.PorterDuffColorFilter
                android.graphics.PorterDuff$Mode r3 = android.graphics.PorterDuff.Mode.MULTIPLY
                r2.<init>(r0, r3)
                r10.setColorFilter(r2)
                android.text.TextPaint r10 = r9.textPaint
                int r0 = r9.lastColor
                r10.setColor(r0)
                android.graphics.Paint r10 = r9.selectionPaint
                r10.setColor(r1)
                org.telegram.ui.Cells.GroupCallUserCell$AvatarWavesDrawable r10 = r9.avatarWavesDrawable
                r0 = 38
                int r0 = androidx.core.graphics.ColorUtils.setAlphaComponent(r1, r0)
                r10.setColor(r0)
                r9.invalidate()
                goto L97
            L6c:
                int r4 = r9.lastColor
                int r6 = r9.lastWavesColor
                r10 = 2
                float[] r10 = new float[r10]
                r10 = {x0098: FILL_ARRAY_DATA  , data: [0, 1065353216} // fill-array
                android.animation.ValueAnimator r10 = android.animation.ValueAnimator.ofFloat(r10)
                r9.colorAnimator = r10
                org.telegram.ui.Components.GroupCallFullscreenAdapter$GroupCallUserCell$$ExternalSyntheticLambda0 r8 = new org.telegram.ui.Components.GroupCallFullscreenAdapter$GroupCallUserCell$$ExternalSyntheticLambda0
                r2 = r8
                r3 = r9
                r5 = r0
                r7 = r1
                r2.<init>()
                r10.addUpdateListener(r8)
                android.animation.ValueAnimator r10 = r9.colorAnimator
                org.telegram.ui.Components.GroupCallFullscreenAdapter$GroupCallUserCell$2 r2 = new org.telegram.ui.Components.GroupCallFullscreenAdapter$GroupCallUserCell$2
                r2.<init>()
                r10.addListener(r2)
                android.animation.ValueAnimator r10 = r9.colorAnimator
                r10.start()
            L97:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.GroupCallFullscreenAdapter.GroupCallUserCell.updateState(boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateState$0(int i, int i2, int i3, int i4, ValueAnimator valueAnimator) {
            this.lastColor = ColorUtils.blendARGB(i, i2, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            this.lastWavesColor = ColorUtils.blendARGB(i3, i4, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            this.muteButton.setColorFilter(new PorterDuffColorFilter(this.lastColor, PorterDuff.Mode.MULTIPLY));
            this.textPaint.setColor(this.lastColor);
            this.selectionPaint.setColor(this.lastWavesColor);
            this.avatarWavesDrawable.setColor(ColorUtils.setAlphaComponent(this.lastWavesColor, 38));
            invalidate();
        }

        @Override // android.view.View
        public void invalidate() {
            if (this.skipInvalidate) {
                return;
            }
            this.skipInvalidate = true;
            super.invalidate();
            GroupCallMiniTextureView groupCallMiniTextureView = this.renderer;
            if (groupCallMiniTextureView == null) {
                GroupCallFullscreenAdapter.this.renderersContainer.invalidate();
            } else {
                groupCallMiniTextureView.invalidate();
            }
            this.skipInvalidate = false;
        }

        @Override // org.telegram.p043ui.Components.voip.GroupCallStatusIcon.Callback
        public void onStatusChanged() {
            this.avatarWavesDrawable.setShowWaves(this.statusIcon.isSpeaking(), this);
            updateState(true);
        }

        public boolean isRemoving(RecyclerListView recyclerListView) {
            return recyclerListView.getChildAdapterPosition(this) == -1;
        }
    }

    public void update(boolean z, RecyclerListView recyclerListView) {
        if (this.groupCall == null) {
            return;
        }
        if (z) {
            final ArrayList arrayList = new ArrayList(this.participants);
            final ArrayList arrayList2 = new ArrayList(this.videoParticipants);
            this.participants.clear();
            ChatObject.Call call = this.groupCall;
            if (!call.call.rtmp_stream) {
                this.participants.addAll(call.visibleParticipants);
            }
            this.videoParticipants.clear();
            ChatObject.Call call2 = this.groupCall;
            if (!call2.call.rtmp_stream) {
                this.videoParticipants.addAll(call2.visibleVideoParticipants);
            }
            DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: org.telegram.ui.Components.GroupCallFullscreenAdapter.1
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areContentsTheSame(int i, int i2) {
                    return true;
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getOldListSize() {
                    return arrayList2.size() + arrayList.size();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getNewListSize() {
                    return GroupCallFullscreenAdapter.this.videoParticipants.size() + GroupCallFullscreenAdapter.this.participants.size();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areItemsTheSame(int i, int i2) {
                    TLRPC$TL_groupCallParticipant tLRPC$TL_groupCallParticipant;
                    if (i < arrayList2.size() && i2 < GroupCallFullscreenAdapter.this.videoParticipants.size()) {
                        return ((ChatObject.VideoParticipant) arrayList2.get(i)).equals(GroupCallFullscreenAdapter.this.videoParticipants.get(i2));
                    }
                    int size = i - arrayList2.size();
                    int size2 = i2 - GroupCallFullscreenAdapter.this.videoParticipants.size();
                    if (size2 >= 0 && size2 < GroupCallFullscreenAdapter.this.participants.size() && size >= 0 && size < arrayList.size()) {
                        return MessageObject.getPeerId(((TLRPC$TL_groupCallParticipant) arrayList.get(size)).peer) == MessageObject.getPeerId(((TLRPC$TL_groupCallParticipant) GroupCallFullscreenAdapter.this.participants.get(size2)).peer);
                    }
                    if (i < arrayList2.size()) {
                        tLRPC$TL_groupCallParticipant = ((ChatObject.VideoParticipant) arrayList2.get(i)).participant;
                    } else {
                        tLRPC$TL_groupCallParticipant = (TLRPC$TL_groupCallParticipant) arrayList.get(size);
                    }
                    return MessageObject.getPeerId(tLRPC$TL_groupCallParticipant.peer) == MessageObject.getPeerId((i2 < GroupCallFullscreenAdapter.this.videoParticipants.size() ? ((ChatObject.VideoParticipant) GroupCallFullscreenAdapter.this.videoParticipants.get(i2)).participant : (TLRPC$TL_groupCallParticipant) GroupCallFullscreenAdapter.this.participants.get(size2)).peer);
                }
            }).dispatchUpdatesTo(this);
            AndroidUtilities.updateVisibleRows(recyclerListView);
            return;
        }
        this.participants.clear();
        ChatObject.Call call3 = this.groupCall;
        if (!call3.call.rtmp_stream) {
            this.participants.addAll(call3.visibleParticipants);
        }
        this.videoParticipants.clear();
        ChatObject.Call call4 = this.groupCall;
        if (!call4.call.rtmp_stream) {
            this.videoParticipants.addAll(call4.visibleVideoParticipants);
        }
        notifyDataSetChanged();
    }
}
