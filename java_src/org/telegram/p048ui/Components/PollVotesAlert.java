package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.wearable.WearableStatusCodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.AnimationProperties;
import org.telegram.p048ui.Components.PollVotesAlert;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.ProfileActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$MessageUserVote;
import org.telegram.tgnet.TLRPC$Poll;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messageMediaPoll;
import org.telegram.tgnet.TLRPC$TL_messageUserVoteInputOption;
import org.telegram.tgnet.TLRPC$TL_messages_getPollVotes;
import org.telegram.tgnet.TLRPC$TL_messages_votesList;
import org.telegram.tgnet.TLRPC$TL_pollAnswer;
import org.telegram.tgnet.TLRPC$TL_pollAnswerVoters;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.PollVotesAlert */
/* loaded from: classes6.dex */
public class PollVotesAlert extends BottomSheet {
    public static final Property<UserCell, Float> USER_CELL_PROPERTY = new AnimationProperties.FloatProperty<UserCell>("placeholderAlpha") { // from class: org.telegram.ui.Components.PollVotesAlert.1
        @Override // org.telegram.p048ui.Components.AnimationProperties.FloatProperty
        public void setValue(UserCell userCell, float f) {
            userCell.setPlaceholderAlpha(f);
        }

        @Override // android.util.Property
        public Float get(UserCell userCell) {
            return Float.valueOf(userCell.getPlaceholderAlpha());
        }
    };
    private C3366ActionBar actionBar;
    private AnimatorSet actionBarAnimation;
    private View actionBarShadow;
    private ChatActivity chatActivity;
    private float gradientWidth;
    private Adapter listAdapter;
    private RecyclerListView listView;
    private HashSet<VotesList> loadingMore;
    private boolean loadingResults;
    private MessageObject messageObject;
    private TLRPC$InputPeer peer;
    private LinearGradient placeholderGradient;
    private Matrix placeholderMatrix;
    private Paint placeholderPaint;
    private TLRPC$Poll poll;
    private ArrayList<Integer> queries;
    private RectF rect;
    private int scrollOffsetY;
    private Drawable shadowDrawable;
    private TextView titleTextView;
    private float totalTranslation;
    private ArrayList<VotesList> voters;
    private HashMap<VotesList, Button> votesPercents;

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    static /* synthetic */ float access$3016(PollVotesAlert pollVotesAlert, float f) {
        float f2 = pollVotesAlert.totalTranslation + f;
        pollVotesAlert.totalTranslation = f2;
        return f2;
    }

    static /* synthetic */ float access$3024(PollVotesAlert pollVotesAlert, float f) {
        float f2 = pollVotesAlert.totalTranslation - f;
        pollVotesAlert.totalTranslation = f2;
        return f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PollVotesAlert$VotesList */
    /* loaded from: classes6.dex */
    public static class VotesList {
        public boolean collapsed;
        public int collapsedCount = 10;
        public int count;
        public String next_offset;
        public byte[] option;
        public ArrayList<TLRPC$User> users;
        public ArrayList<TLRPC$MessageUserVote> votes;

        public VotesList(TLRPC$TL_messages_votesList tLRPC$TL_messages_votesList, byte[] bArr) {
            this.count = tLRPC$TL_messages_votesList.count;
            this.votes = tLRPC$TL_messages_votesList.votes;
            this.users = tLRPC$TL_messages_votesList.users;
            this.next_offset = tLRPC$TL_messages_votesList.next_offset;
            this.option = bArr;
        }

        public int getCount() {
            if (this.collapsed) {
                return Math.min(this.collapsedCount, this.votes.size());
            }
            return this.votes.size();
        }

        public int getCollapsed() {
            if (this.votes.size() <= 15) {
                return 0;
            }
            return this.collapsed ? 1 : 2;
        }
    }

    /* renamed from: org.telegram.ui.Components.PollVotesAlert$SectionCell */
    /* loaded from: classes6.dex */
    public class SectionCell extends FrameLayout {
        private TextView middleTextView;
        private AnimatedTextView righTextView;
        private TextView textView;

        protected void onCollapseClick() {
        }

        public SectionCell(Context context) {
            super(context);
            setBackgroundColor(Theme.getColor("graySection"));
            TextView textView = new TextView(getContext());
            this.textView = textView;
            textView.setTextSize(1, 14.0f);
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setTextColor(Theme.getColor("key_graySectionText"));
            this.textView.setSingleLine(true);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            TextView textView2 = new TextView(getContext());
            this.middleTextView = textView2;
            textView2.setTextSize(1, 14.0f);
            this.middleTextView.setTextColor(Theme.getColor("key_graySectionText"));
            this.middleTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            AnimatedTextView animatedTextView = new AnimatedTextView(getContext(), PollVotesAlert.this) { // from class: org.telegram.ui.Components.PollVotesAlert.SectionCell.1
                @Override // android.view.View
                public boolean post(Runnable runnable) {
                    return ((BottomSheet) PollVotesAlert.this).containerView.post(runnable);
                }

                @Override // android.view.View
                public boolean postDelayed(Runnable runnable, long j) {
                    return ((BottomSheet) PollVotesAlert.this).containerView.postDelayed(runnable, j);
                }

                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    SectionCell sectionCell = SectionCell.this;
                    if (sectionCell == PollVotesAlert.this.listView.getPinnedHeader()) {
                        PollVotesAlert.this.listView.invalidate();
                    }
                }
            };
            this.righTextView = animatedTextView;
            animatedTextView.setTextSize(AndroidUtilities.m50dp(14));
            this.righTextView.setTextColor(Theme.getColor("key_graySectionText"));
            this.righTextView.setGravity(LocaleController.isRTL ? 3 : 5);
            this.righTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PollVotesAlert$SectionCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PollVotesAlert.SectionCell.this.lambda$new$0(view);
                }
            });
            TextView textView3 = this.textView;
            boolean z = LocaleController.isRTL;
            addView(textView3, LayoutHelper.createFrame(-2, -1, (z ? 5 : 3) | 48, z ? 0 : 16, 0, z ? 16 : 0, 0));
            addView(this.middleTextView, LayoutHelper.createFrame(-2, -1, (LocaleController.isRTL ? 5 : 3) | 48, 0, 0, 0, 0));
            addView(this.righTextView, LayoutHelper.createFrame(-2, -1, (LocaleController.isRTL ? 3 : 5) | 48, 16, 0, 16, 0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            onCollapseClick();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(32), 1073741824);
            measureChildWithMargins(this.middleTextView, i, 0, makeMeasureSpec, 0);
            measureChildWithMargins(this.righTextView, i, 0, makeMeasureSpec, 0);
            measureChildWithMargins(this.textView, i, this.middleTextView.getMeasuredWidth() + this.righTextView.getMeasuredWidth() + AndroidUtilities.m50dp(32), makeMeasureSpec, 0);
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m50dp(32));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (LocaleController.isRTL) {
                int left = this.textView.getLeft() - this.middleTextView.getMeasuredWidth();
                TextView textView = this.middleTextView;
                textView.layout(left, textView.getTop(), this.middleTextView.getMeasuredWidth() + left, this.middleTextView.getBottom());
                return;
            }
            int right = this.textView.getRight();
            TextView textView2 = this.middleTextView;
            textView2.layout(right, textView2.getTop(), this.middleTextView.getMeasuredWidth() + right, this.middleTextView.getBottom());
        }

        public void setText(String str, int i, int i2, int i3, boolean z) {
            SpannableStringBuilder spannableStringBuilder;
            TextView textView = this.textView;
            textView.setText(Emoji.replaceEmoji(str, textView.getPaint().getFontMetricsInt(), AndroidUtilities.m50dp(14), false));
            String format = String.format("%d", Integer.valueOf(i));
            if (LocaleController.isRTL) {
                spannableStringBuilder = new SpannableStringBuilder(String.format("%s%% – ", Integer.valueOf(i)));
            } else {
                spannableStringBuilder = new SpannableStringBuilder(String.format(" – %s%%", Integer.valueOf(i)));
            }
            spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 3, format.length() + 3, 33);
            this.middleTextView.setText(spannableStringBuilder);
            if (i3 == 0) {
                if (PollVotesAlert.this.poll.quiz) {
                    this.righTextView.setText(LocaleController.formatPluralString("Answer", i2, new Object[0]), z);
                } else {
                    this.righTextView.setText(LocaleController.formatPluralString("Vote", i2, new Object[0]), z);
                }
            } else if (i3 == 1) {
                this.righTextView.setText(LocaleController.getString("PollExpand", C3301R.string.PollExpand), z);
            } else {
                this.righTextView.setText(LocaleController.getString("PollCollapse", C3301R.string.PollCollapse), z);
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.PollVotesAlert$UserCell */
    /* loaded from: classes6.dex */
    public class UserCell extends FrameLayout {
        private ArrayList<Animator> animators;
        private AvatarDrawable avatarDrawable;
        private BackupImageView avatarImageView;
        private TLRPC$User currentUser;
        private boolean drawPlaceholder;
        private TLRPC$FileLocation lastAvatar;
        private String lastName;
        private int lastStatus;
        private SimpleTextView nameTextView;
        private boolean needDivider;
        private float placeholderAlpha;
        private int placeholderNum;

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        public UserCell(Context context) {
            super(context);
            int i = UserConfig.selectedAccount;
            this.placeholderAlpha = 1.0f;
            setWillNotDraw(false);
            this.avatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarImageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m50dp(18));
            BackupImageView backupImageView2 = this.avatarImageView;
            boolean z = LocaleController.isRTL;
            addView(backupImageView2, LayoutHelper.createFrame(36, 36, (z ? 5 : 3) | 48, z ? 0 : 14, 6, z ? 14 : 0, 0));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.nameTextView = simpleTextView;
            simpleTextView.setTextColor(Theme.getColor("dialogTextBlack"));
            this.nameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.nameTextView.setTextSize(16);
            this.nameTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            SimpleTextView simpleTextView2 = this.nameTextView;
            boolean z2 = LocaleController.isRTL;
            addView(simpleTextView2, LayoutHelper.createFrame(-1, 20, (z2 ? 5 : 3) | 48, z2 ? 28 : 65, 14, z2 ? 65 : 28, 0));
        }

        public void setData(TLRPC$User tLRPC$User, int i, boolean z) {
            this.currentUser = tLRPC$User;
            this.needDivider = z;
            this.drawPlaceholder = tLRPC$User == null;
            this.placeholderNum = i;
            if (tLRPC$User == null) {
                this.nameTextView.setText("");
                this.avatarImageView.setImageDrawable(null);
            } else {
                update(0);
            }
            ArrayList<Animator> arrayList = this.animators;
            if (arrayList != null) {
                arrayList.add(ObjectAnimator.ofFloat(this.avatarImageView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(this.nameTextView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(this, PollVotesAlert.USER_CELL_PROPERTY, 1.0f, BitmapDescriptorFactory.HUE_RED));
            } else if (this.drawPlaceholder) {
            } else {
                this.placeholderAlpha = BitmapDescriptorFactory.HUE_RED;
            }
        }

        @Keep
        public void setPlaceholderAlpha(float f) {
            this.placeholderAlpha = f;
            invalidate();
        }

        @Keep
        public float getPlaceholderAlpha() {
            return this.placeholderAlpha;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(48) + (this.needDivider ? 1 : 0), 1073741824));
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x0062, code lost:
            if (r1.equals(r10.lastName) == false) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void update(int r11) {
            /*
                r10 = this;
                org.telegram.tgnet.TLRPC$User r0 = r10.currentUser
                r1 = 0
                if (r0 == 0) goto Lc
                org.telegram.tgnet.TLRPC$UserProfilePhoto r2 = r0.photo
                if (r2 == 0) goto Lc
                org.telegram.tgnet.TLRPC$FileLocation r2 = r2.photo_small
                goto Ld
            Lc:
                r2 = r1
            Ld:
                r3 = 0
                if (r11 == 0) goto L69
                int r4 = org.telegram.messenger.MessagesController.UPDATE_MASK_AVATAR
                r4 = r4 & r11
                r5 = 1
                if (r4 == 0) goto L34
                org.telegram.tgnet.TLRPC$FileLocation r4 = r10.lastAvatar
                if (r4 == 0) goto L1c
                if (r2 == 0) goto L32
            L1c:
                if (r4 != 0) goto L20
                if (r2 != 0) goto L32
            L20:
                if (r4 == 0) goto L34
                if (r2 == 0) goto L34
                long r6 = r4.volume_id
                long r8 = r2.volume_id
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 != 0) goto L32
                int r4 = r4.local_id
                int r6 = r2.local_id
                if (r4 == r6) goto L34
            L32:
                r4 = r5
                goto L35
            L34:
                r4 = r3
            L35:
                if (r0 == 0) goto L4b
                if (r4 != 0) goto L4b
                int r6 = org.telegram.messenger.MessagesController.UPDATE_MASK_STATUS
                r6 = r6 & r11
                if (r6 == 0) goto L4b
                org.telegram.tgnet.TLRPC$UserStatus r6 = r0.status
                if (r6 == 0) goto L45
                int r6 = r6.expires
                goto L46
            L45:
                r6 = r3
            L46:
                int r7 = r10.lastStatus
                if (r6 == r7) goto L4b
                r4 = r5
            L4b:
                if (r4 != 0) goto L65
                java.lang.String r6 = r10.lastName
                if (r6 == 0) goto L65
                int r6 = org.telegram.messenger.MessagesController.UPDATE_MASK_NAME
                r11 = r11 & r6
                if (r11 == 0) goto L65
                if (r0 == 0) goto L5c
                java.lang.String r1 = org.telegram.messenger.UserObject.getUserName(r0)
            L5c:
                java.lang.String r11 = r10.lastName
                boolean r11 = r1.equals(r11)
                if (r11 != 0) goto L65
                goto L66
            L65:
                r5 = r4
            L66:
                if (r5 != 0) goto L69
                return
            L69:
                org.telegram.ui.Components.AvatarDrawable r11 = r10.avatarDrawable
                org.telegram.tgnet.TLRPC$User r0 = r10.currentUser
                r11.setInfo(r0)
                org.telegram.tgnet.TLRPC$User r11 = r10.currentUser
                org.telegram.tgnet.TLRPC$UserStatus r0 = r11.status
                if (r0 == 0) goto L7b
                int r0 = r0.expires
                r10.lastStatus = r0
                goto L7d
            L7b:
                r10.lastStatus = r3
            L7d:
                if (r11 == 0) goto L88
                if (r1 != 0) goto L85
                java.lang.String r1 = org.telegram.messenger.UserObject.getUserName(r11)
            L85:
                r10.lastName = r1
                goto L8c
            L88:
                java.lang.String r11 = ""
                r10.lastName = r11
            L8c:
                org.telegram.ui.ActionBar.SimpleTextView r11 = r10.nameTextView
                java.lang.String r0 = r10.lastName
                r11.setText(r0)
                r10.lastAvatar = r2
                org.telegram.tgnet.TLRPC$User r11 = r10.currentUser
                if (r11 == 0) goto La1
                org.telegram.ui.Components.BackupImageView r0 = r10.avatarImageView
                org.telegram.ui.Components.AvatarDrawable r1 = r10.avatarDrawable
                r0.setForUserOrChat(r11, r1)
                goto La8
            La1:
                org.telegram.ui.Components.BackupImageView r11 = r10.avatarImageView
                org.telegram.ui.Components.AvatarDrawable r0 = r10.avatarDrawable
                r11.setImageDrawable(r0)
            La8:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.PollVotesAlert.UserCell.update(int):void");
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int top;
            int m50dp;
            int m50dp2;
            int m50dp3;
            int m50dp4;
            boolean z = this.drawPlaceholder;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (z || this.placeholderAlpha != BitmapDescriptorFactory.HUE_RED) {
                PollVotesAlert.this.placeholderPaint.setAlpha((int) (this.placeholderAlpha * 255.0f));
                canvas.drawCircle(this.avatarImageView.getLeft() + (this.avatarImageView.getMeasuredWidth() / 2), this.avatarImageView.getTop() + (this.avatarImageView.getMeasuredHeight() / 2), this.avatarImageView.getMeasuredWidth() / 2, PollVotesAlert.this.placeholderPaint);
                if (this.placeholderNum % 2 == 0) {
                    m50dp = AndroidUtilities.m50dp(65);
                    m50dp2 = AndroidUtilities.m50dp(48);
                } else {
                    m50dp = AndroidUtilities.m50dp(65);
                    m50dp2 = AndroidUtilities.m50dp(60);
                }
                if (LocaleController.isRTL) {
                    m50dp = (getMeasuredWidth() - m50dp) - m50dp2;
                }
                PollVotesAlert.this.rect.set(m50dp, top - AndroidUtilities.m50dp(4), m50dp + m50dp2, AndroidUtilities.m50dp(4) + top);
                canvas.drawRoundRect(PollVotesAlert.this.rect, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), PollVotesAlert.this.placeholderPaint);
                if (this.placeholderNum % 2 == 0) {
                    m50dp3 = AndroidUtilities.m50dp(119);
                    m50dp4 = AndroidUtilities.m50dp(60);
                } else {
                    m50dp3 = AndroidUtilities.m50dp(131);
                    m50dp4 = AndroidUtilities.m50dp(80);
                }
                if (LocaleController.isRTL) {
                    m50dp3 = (getMeasuredWidth() - m50dp3) - m50dp4;
                }
                PollVotesAlert.this.rect.set(m50dp3, top - AndroidUtilities.m50dp(4), m50dp3 + m50dp4, top + AndroidUtilities.m50dp(4));
                canvas.drawRoundRect(PollVotesAlert.this.rect, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), PollVotesAlert.this.placeholderPaint);
            }
            if (this.needDivider) {
                if (!LocaleController.isRTL) {
                    f = AndroidUtilities.m50dp(64);
                }
                canvas.drawLine(f, getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m50dp(64) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
    }

    public static void showForPoll(ChatActivity chatActivity, MessageObject messageObject) {
        if (chatActivity == null || chatActivity.getParentActivity() == null) {
            return;
        }
        chatActivity.showDialog(new PollVotesAlert(chatActivity, messageObject));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PollVotesAlert$Button */
    /* loaded from: classes6.dex */
    public static class Button {
        private float decimal;
        private int percent;
        private int votesCount;

        private Button() {
        }

        static /* synthetic */ float access$3924(Button button, float f) {
            float f2 = button.decimal - f;
            button.decimal = f2;
            return f2;
        }

        static /* synthetic */ int access$4012(Button button, int i) {
            int i2 = button.percent + i;
            button.percent = i2;
            return i2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PollVotesAlert(final ChatActivity chatActivity, MessageObject messageObject) {
        super(chatActivity.getParentActivity(), true);
        int i;
        int i2;
        int i3 = 1;
        this.loadingMore = new HashSet<>();
        this.votesPercents = new HashMap<>();
        this.voters = new ArrayList<>();
        this.queries = new ArrayList<>();
        this.placeholderPaint = new Paint(1);
        this.loadingResults = true;
        this.rect = new RectF();
        fixNavigationBar();
        this.messageObject = messageObject;
        this.chatActivity = chatActivity;
        TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll = (TLRPC$TL_messageMediaPoll) messageObject.messageOwner.media;
        this.poll = tLRPC$TL_messageMediaPoll.poll;
        Activity parentActivity = chatActivity.getParentActivity();
        this.peer = chatActivity.getMessagesController().getInputPeer((int) messageObject.getDialogId());
        final ArrayList arrayList = new ArrayList();
        int size = tLRPC$TL_messageMediaPoll.results.results.size();
        final Integer[] numArr = new Integer[size];
        int i4 = 0;
        while (i4 < size) {
            final TLRPC$TL_pollAnswerVoters tLRPC$TL_pollAnswerVoters = tLRPC$TL_messageMediaPoll.results.results.get(i4);
            if (tLRPC$TL_pollAnswerVoters.voters == 0) {
                i2 = i4;
                i = size;
            } else {
                TLRPC$TL_messages_votesList tLRPC$TL_messages_votesList = new TLRPC$TL_messages_votesList();
                int i5 = tLRPC$TL_pollAnswerVoters.voters;
                i5 = i5 > 15 ? 10 : i5;
                for (int i6 = 0; i6 < i5; i6++) {
                    tLRPC$TL_messages_votesList.votes.add(new TLRPC$TL_messageUserVoteInputOption());
                }
                int i7 = tLRPC$TL_pollAnswerVoters.voters;
                tLRPC$TL_messages_votesList.next_offset = i5 < i7 ? "empty" : null;
                tLRPC$TL_messages_votesList.count = i7;
                this.voters.add(new VotesList(tLRPC$TL_messages_votesList, tLRPC$TL_pollAnswerVoters.option));
                TLRPC$TL_messages_getPollVotes tLRPC$TL_messages_getPollVotes = new TLRPC$TL_messages_getPollVotes();
                tLRPC$TL_messages_getPollVotes.peer = this.peer;
                tLRPC$TL_messages_getPollVotes.f1595id = this.messageObject.getId();
                tLRPC$TL_messages_getPollVotes.limit = tLRPC$TL_pollAnswerVoters.voters <= 15 ? 15 : 10;
                tLRPC$TL_messages_getPollVotes.flags |= i3;
                tLRPC$TL_messages_getPollVotes.option = tLRPC$TL_pollAnswerVoters.option;
                final int i8 = i4;
                i = size;
                i2 = i4;
                numArr[i2] = Integer.valueOf(chatActivity.getConnectionsManager().sendRequest(tLRPC$TL_messages_getPollVotes, new RequestDelegate() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda4
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        PollVotesAlert.this.lambda$new$1(numArr, i8, chatActivity, arrayList, tLRPC$TL_pollAnswerVoters, tLObject, tLRPC$TL_error);
                    }
                }));
                this.queries.add(numArr[i2]);
            }
            i4 = i2 + 1;
            size = i;
            i3 = 1;
        }
        updateButtons();
        Collections.sort(this.voters, new Comparator<VotesList>() { // from class: org.telegram.ui.Components.PollVotesAlert.2
            private int getIndex(VotesList votesList) {
                int size2 = PollVotesAlert.this.poll.answers.size();
                for (int i9 = 0; i9 < size2; i9++) {
                    if (Arrays.equals(PollVotesAlert.this.poll.answers.get(i9).option, votesList.option)) {
                        return i9;
                    }
                }
                return 0;
            }

            @Override // java.util.Comparator
            public int compare(VotesList votesList, VotesList votesList2) {
                int index = getIndex(votesList);
                int index2 = getIndex(votesList2);
                if (index > index2) {
                    return 1;
                }
                return index < index2 ? -1 : 0;
            }
        });
        updatePlaceholder();
        Drawable mutate = parentActivity.getResources().getDrawable(C3301R.C3303drawable.sheet_shadow_round).mutate();
        this.shadowDrawable = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogBackground"), PorterDuff.Mode.MULTIPLY));
        FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.PollVotesAlert.3
            private boolean ignoreLayout = false;
            private RectF rect = new RectF();

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i9, int i10) {
                int size2 = View.MeasureSpec.getSize(i10);
                if (Build.VERSION.SDK_INT >= 21 && !((BottomSheet) PollVotesAlert.this).isFullscreen) {
                    this.ignoreLayout = true;
                    setPadding(((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, 0);
                    this.ignoreLayout = false;
                }
                int paddingTop = size2 - getPaddingTop();
                ((FrameLayout.LayoutParams) PollVotesAlert.this.listView.getLayoutParams()).topMargin = C3366ActionBar.getCurrentActionBarHeight();
                ((FrameLayout.LayoutParams) PollVotesAlert.this.actionBarShadow.getLayoutParams()).topMargin = C3366ActionBar.getCurrentActionBarHeight();
                int m50dp = ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop + AndroidUtilities.m50dp(15) + AndroidUtilities.statusBarHeight;
                int sectionCount = PollVotesAlert.this.listAdapter.getSectionCount();
                for (int i11 = 0; i11 < sectionCount; i11++) {
                    if (i11 == 0) {
                        PollVotesAlert.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9 - (((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft * 2)), 1073741824), i10);
                        m50dp += PollVotesAlert.this.titleTextView.getMeasuredHeight();
                    } else {
                        m50dp += AndroidUtilities.m50dp(32) + (AndroidUtilities.m50dp(50) * (PollVotesAlert.this.listAdapter.getCountForSection(i11) - 1));
                    }
                }
                int m50dp2 = (m50dp < paddingTop ? paddingTop - m50dp : paddingTop - ((paddingTop / 5) * 3)) + AndroidUtilities.m50dp(8);
                if (PollVotesAlert.this.listView.getPaddingTop() != m50dp2) {
                    this.ignoreLayout = true;
                    PollVotesAlert.this.listView.setPinnedSectionOffsetY(-m50dp2);
                    PollVotesAlert.this.listView.setPadding(0, m50dp2, 0, 0);
                    this.ignoreLayout = false;
                }
                super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i9, int i10, int i11, int i12) {
                super.onLayout(z, i9, i10, i11, i12);
                PollVotesAlert.this.updateLayout(false);
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && PollVotesAlert.this.scrollOffsetY != 0 && motionEvent.getY() < PollVotesAlert.this.scrollOffsetY + AndroidUtilities.m50dp(12) && PollVotesAlert.this.actionBar.getAlpha() == BitmapDescriptorFactory.HUE_RED) {
                    PollVotesAlert.this.dismiss();
                    return true;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return !PollVotesAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                float f;
                int m50dp = AndroidUtilities.m50dp(13);
                int i9 = (PollVotesAlert.this.scrollOffsetY - ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop) - m50dp;
                if (((BottomSheet) PollVotesAlert.this).currentSheetAnimationType == 1) {
                    i9 = (int) (i9 + PollVotesAlert.this.listView.getTranslationY());
                }
                int m50dp2 = AndroidUtilities.m50dp(20) + i9;
                int measuredHeight = getMeasuredHeight() + AndroidUtilities.m50dp(15) + ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop;
                if (((BottomSheet) PollVotesAlert.this).backgroundPaddingTop + i9 < C3366ActionBar.getCurrentActionBarHeight()) {
                    float m50dp3 = m50dp + AndroidUtilities.m50dp(4);
                    float min = Math.min(1.0f, ((C3366ActionBar.getCurrentActionBarHeight() - i9) - ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop) / m50dp3);
                    int currentActionBarHeight = (int) ((C3366ActionBar.getCurrentActionBarHeight() - m50dp3) * min);
                    i9 -= currentActionBarHeight;
                    m50dp2 -= currentActionBarHeight;
                    measuredHeight += currentActionBarHeight;
                    f = 1.0f - min;
                } else {
                    f = 1.0f;
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    int i10 = AndroidUtilities.statusBarHeight;
                    i9 += i10;
                    m50dp2 += i10;
                }
                PollVotesAlert.this.shadowDrawable.setBounds(0, i9, getMeasuredWidth(), measuredHeight);
                PollVotesAlert.this.shadowDrawable.draw(canvas);
                if (f != 1.0f) {
                    Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor("dialogBackground"));
                    this.rect.set(((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop + i9, getMeasuredWidth() - ((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop + i9 + AndroidUtilities.m50dp(24));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(12) * f, AndroidUtilities.m50dp(12) * f, Theme.dialogs_onlineCirclePaint);
                }
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    int m50dp4 = AndroidUtilities.m50dp(36);
                    this.rect.set((getMeasuredWidth() - m50dp4) / 2, m50dp2, (getMeasuredWidth() + m50dp4) / 2, m50dp2 + AndroidUtilities.m50dp(4));
                    int color = Theme.getColor("key_sheet_scrollUp");
                    int alpha = Color.alpha(color);
                    Theme.dialogs_onlineCirclePaint.setColor(color);
                    Theme.dialogs_onlineCirclePaint.setAlpha((int) (alpha * 1.0f * f));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), Theme.dialogs_onlineCirclePaint);
                }
                int color2 = Theme.getColor("dialogBackground");
                Theme.dialogs_onlineCirclePaint.setColor(Color.argb((int) (PollVotesAlert.this.actionBar.getAlpha() * 255.0f), (int) (Color.red(color2) * 0.8f), (int) (Color.green(color2) * 0.8f), (int) (Color.blue(color2) * 0.8f)));
                canvas.drawRect(((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth() - ((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
            }
        };
        this.containerView = frameLayout;
        frameLayout.setWillNotDraw(false);
        ViewGroup viewGroup = this.containerView;
        int i9 = this.backgroundPaddingLeft;
        viewGroup.setPadding(i9, 0, i9, 0);
        this.listView = new RecyclerListView(parentActivity) { // from class: org.telegram.ui.Components.PollVotesAlert.4
            long lastUpdateTime;

            @Override // org.telegram.p048ui.Components.RecyclerListView
            protected boolean allowSelectChildAtPosition(float f, float f2) {
                return f2 >= ((float) (PollVotesAlert.this.scrollOffsetY + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                if (PollVotesAlert.this.loadingResults) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long abs = Math.abs(this.lastUpdateTime - elapsedRealtime);
                    if (abs > 17) {
                        abs = 16;
                    }
                    this.lastUpdateTime = elapsedRealtime;
                    PollVotesAlert pollVotesAlert = PollVotesAlert.this;
                    PollVotesAlert.access$3016(pollVotesAlert, (((float) abs) * pollVotesAlert.gradientWidth) / 1800.0f);
                    while (PollVotesAlert.this.totalTranslation >= PollVotesAlert.this.gradientWidth * 2.0f) {
                        PollVotesAlert pollVotesAlert2 = PollVotesAlert.this;
                        PollVotesAlert.access$3024(pollVotesAlert2, pollVotesAlert2.gradientWidth * 2.0f);
                    }
                    PollVotesAlert.this.placeholderMatrix.setTranslate(PollVotesAlert.this.totalTranslation, BitmapDescriptorFactory.HUE_RED);
                    PollVotesAlert.this.placeholderGradient.setLocalMatrix(PollVotesAlert.this.placeholderMatrix);
                    invalidateViews();
                    invalidate();
                }
                super.dispatchDraw(canvas);
            }
        };
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setAddDuration(150L);
        defaultItemAnimator.setMoveDuration(350L);
        defaultItemAnimator.setChangeDuration(0L);
        defaultItemAnimator.setRemoveDuration(0L);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setMoveInterpolator(new OvershootInterpolator(1.1f));
        defaultItemAnimator.setTranslationInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setClipToPadding(false);
        this.listView.setLayoutManager(new LinearLayoutManager(this, getContext(), 1, false) { // from class: org.telegram.ui.Components.PollVotesAlert.5
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            protected int getExtraLayoutSpace(RecyclerView.State state) {
                return AndroidUtilities.m50dp((int) WearableStatusCodes.TARGET_NODE_NOT_CONNECTED);
            }
        });
        this.listView.setHorizontalScrollBarEnabled(false);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setSectionsType(2);
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        RecyclerListView recyclerListView = this.listView;
        Adapter adapter = new Adapter(parentActivity);
        this.listAdapter = adapter;
        recyclerListView.setAdapter(adapter);
        this.listView.setGlowColor(Theme.getColor("dialogScrollGlow"));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda6
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i10) {
                PollVotesAlert.this.lambda$new$4(chatActivity, view, i10);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.PollVotesAlert.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                if (PollVotesAlert.this.listView.getChildCount() <= 0) {
                    return;
                }
                PollVotesAlert.this.updateLayout(true);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                if (i10 == 0) {
                    if (((PollVotesAlert.this.scrollOffsetY - ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop) - AndroidUtilities.m50dp(13)) + ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop >= C3366ActionBar.getCurrentActionBarHeight() || !PollVotesAlert.this.listView.canScrollVertically(1)) {
                        return;
                    }
                    PollVotesAlert.this.listView.getChildAt(0);
                    RecyclerListView.Holder holder = (RecyclerListView.Holder) PollVotesAlert.this.listView.findViewHolderForAdapterPosition(0);
                    if (holder == null || holder.itemView.getTop() <= AndroidUtilities.m50dp(7)) {
                        return;
                    }
                    PollVotesAlert.this.listView.smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.m50dp(7));
                }
            }
        });
        TextView textView = new TextView(parentActivity);
        this.titleTextView = textView;
        textView.setTextSize(1, 18.0f);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleTextView.setPadding(AndroidUtilities.m50dp(21), AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(14), AndroidUtilities.m50dp(21));
        this.titleTextView.setTextColor(Theme.getColor("dialogTextBlack"));
        this.titleTextView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        TextView textView2 = this.titleTextView;
        textView2.setText(Emoji.replaceEmoji(this.poll.question, textView2.getPaint().getFontMetricsInt(), AndroidUtilities.m50dp(18), false));
        C3366ActionBar c3366ActionBar = new C3366ActionBar(parentActivity) { // from class: org.telegram.ui.Components.PollVotesAlert.7
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ((BottomSheet) PollVotesAlert.this).containerView.invalidate();
            }
        };
        this.actionBar = c3366ActionBar;
        c3366ActionBar.setBackgroundColor(Theme.getColor("dialogBackground"));
        this.actionBar.setBackButtonImage(C3301R.C3303drawable.ic_ab_back);
        this.actionBar.setItemsColor(Theme.getColor("dialogTextBlack"), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor("dialogButtonSelector"), false);
        this.actionBar.setTitleColor(Theme.getColor("dialogTextBlack"));
        this.actionBar.setSubtitleColor(Theme.getColor("player_actionBarSubtitle"));
        this.actionBar.setOccupyStatusBar(false);
        this.actionBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.actionBar.setTitle(LocaleController.getString("PollResults", C3301R.string.PollResults));
        if (this.poll.quiz) {
            this.actionBar.setSubtitle(LocaleController.formatPluralString("Answer", tLRPC$TL_messageMediaPoll.results.total_voters, new Object[0]));
        } else {
            this.actionBar.setSubtitle(LocaleController.formatPluralString("Vote", tLRPC$TL_messageMediaPoll.results.total_voters, new Object[0]));
        }
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2));
        this.actionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.PollVotesAlert.8
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i10) {
                if (i10 == -1) {
                    PollVotesAlert.this.dismiss();
                }
            }
        });
        View view = new View(parentActivity);
        this.actionBarShadow = view;
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.actionBarShadow.setBackgroundColor(Theme.getColor("dialogShadowLine"));
        this.containerView.addView(this.actionBarShadow, LayoutHelper.createFrame(-1, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(final Integer[] numArr, final int i, final ChatActivity chatActivity, final ArrayList arrayList, final TLRPC$TL_pollAnswerVoters tLRPC$TL_pollAnswerVoters, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PollVotesAlert.this.lambda$new$0(numArr, i, tLObject, chatActivity, arrayList, tLRPC$TL_pollAnswerVoters);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Integer[] numArr, int i, TLObject tLObject, ChatActivity chatActivity, ArrayList arrayList, TLRPC$TL_pollAnswerVoters tLRPC$TL_pollAnswerVoters) {
        RecyclerView.ViewHolder findContainingViewHolder;
        this.queries.remove(numArr[i]);
        if (tLObject != null) {
            TLRPC$TL_messages_votesList tLRPC$TL_messages_votesList = (TLRPC$TL_messages_votesList) tLObject;
            chatActivity.getMessagesController().putUsers(tLRPC$TL_messages_votesList.users, false);
            if (!tLRPC$TL_messages_votesList.votes.isEmpty()) {
                arrayList.add(new VotesList(tLRPC$TL_messages_votesList, tLRPC$TL_pollAnswerVoters.option));
            }
            if (this.queries.isEmpty()) {
                int size = arrayList.size();
                boolean z = false;
                for (int i2 = 0; i2 < size; i2++) {
                    VotesList votesList = (VotesList) arrayList.get(i2);
                    int size2 = this.voters.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 < size2) {
                            VotesList votesList2 = this.voters.get(i3);
                            if (Arrays.equals(votesList.option, votesList2.option)) {
                                votesList2.next_offset = votesList.next_offset;
                                z = (votesList2.count == votesList.count && votesList2.votes.size() == votesList.votes.size()) ? true : true;
                                votesList2.count = votesList.count;
                                votesList2.users = votesList.users;
                                votesList2.votes = votesList.votes;
                            } else {
                                i3++;
                            }
                        }
                    }
                }
                this.loadingResults = false;
                RecyclerListView recyclerListView = this.listView;
                if (recyclerListView != null) {
                    if (this.currentSheetAnimationType != 0 || this.startAnimationRunnable != null || z) {
                        if (z) {
                            updateButtons();
                        }
                        this.listAdapter.notifyDataSetChanged();
                        return;
                    }
                    int childCount = recyclerListView.getChildCount();
                    ArrayList arrayList2 = new ArrayList();
                    for (int i4 = 0; i4 < childCount; i4++) {
                        View childAt = this.listView.getChildAt(i4);
                        if ((childAt instanceof UserCell) && (findContainingViewHolder = this.listView.findContainingViewHolder(childAt)) != null) {
                            UserCell userCell = (UserCell) childAt;
                            userCell.animators = arrayList2;
                            userCell.setEnabled(true);
                            this.listAdapter.onViewAttachedToWindow(findContainingViewHolder);
                            userCell.animators = null;
                        }
                    }
                    if (!arrayList2.isEmpty()) {
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(arrayList2);
                        animatorSet.setDuration(180L);
                        animatorSet.start();
                    }
                    this.loadingResults = false;
                    return;
                }
                return;
            }
            return;
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(final ChatActivity chatActivity, View view, int i) {
        if (chatActivity == null || chatActivity.getParentActivity() == null) {
            return;
        }
        ArrayList<Integer> arrayList = this.queries;
        if (arrayList == null || arrayList.isEmpty()) {
            int i2 = 0;
            if (view instanceof TextCell) {
                int sectionForPosition = this.listAdapter.getSectionForPosition(i) - 1;
                int positionInSectionForPosition = this.listAdapter.getPositionInSectionForPosition(i) - 1;
                if (positionInSectionForPosition <= 0 || sectionForPosition < 0) {
                    return;
                }
                final VotesList votesList = this.voters.get(sectionForPosition);
                if (positionInSectionForPosition != votesList.getCount() || this.loadingMore.contains(votesList)) {
                    return;
                }
                if (votesList.collapsed && votesList.collapsedCount < votesList.votes.size()) {
                    int min = Math.min(votesList.collapsedCount + 50, votesList.votes.size());
                    votesList.collapsedCount = min;
                    if (min == votesList.votes.size()) {
                        votesList.collapsed = false;
                    }
                    animateSectionUpdates(null);
                    this.listAdapter.update(true);
                    return;
                }
                this.loadingMore.add(votesList);
                TLRPC$TL_messages_getPollVotes tLRPC$TL_messages_getPollVotes = new TLRPC$TL_messages_getPollVotes();
                tLRPC$TL_messages_getPollVotes.peer = this.peer;
                tLRPC$TL_messages_getPollVotes.f1595id = this.messageObject.getId();
                tLRPC$TL_messages_getPollVotes.limit = 50;
                int i3 = tLRPC$TL_messages_getPollVotes.flags | 1;
                tLRPC$TL_messages_getPollVotes.flags = i3;
                tLRPC$TL_messages_getPollVotes.option = votesList.option;
                tLRPC$TL_messages_getPollVotes.flags = i3 | 2;
                tLRPC$TL_messages_getPollVotes.offset = votesList.next_offset;
                this.chatActivity.getConnectionsManager().sendRequest(tLRPC$TL_messages_getPollVotes, new RequestDelegate() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda3
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        PollVotesAlert.this.lambda$new$3(votesList, chatActivity, tLObject, tLRPC$TL_error);
                    }
                });
            } else if (view instanceof UserCell) {
                UserCell userCell = (UserCell) view;
                if (userCell.currentUser == null) {
                    return;
                }
                TLRPC$User currentUser = chatActivity.getCurrentUser();
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", userCell.currentUser.f1640id);
                dismiss();
                ProfileActivity profileActivity = new ProfileActivity(bundle);
                if (currentUser != null && currentUser.f1640id == userCell.currentUser.f1640id) {
                    i2 = 1;
                }
                profileActivity.setPlayProfileAnimation(i2);
                chatActivity.presentFragment(profileActivity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(final VotesList votesList, final ChatActivity chatActivity, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PollVotesAlert.this.lambda$new$2(votesList, tLObject, chatActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(VotesList votesList, TLObject tLObject, ChatActivity chatActivity) {
        if (isShowing()) {
            this.loadingMore.remove(votesList);
            if (tLObject != null) {
                TLRPC$TL_messages_votesList tLRPC$TL_messages_votesList = (TLRPC$TL_messages_votesList) tLObject;
                chatActivity.getMessagesController().putUsers(tLRPC$TL_messages_votesList.users, false);
                votesList.votes.addAll(tLRPC$TL_messages_votesList.votes);
                votesList.next_offset = tLRPC$TL_messages_votesList.next_offset;
                animateSectionUpdates(null);
                this.listAdapter.update(true);
            }
        }
    }

    private void updateButtons() {
        this.votesPercents.clear();
        TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll = (TLRPC$TL_messageMediaPoll) this.messageObject.messageOwner.media;
        ArrayList arrayList = new ArrayList();
        int size = this.voters.size();
        int i = 100;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            VotesList votesList = this.voters.get(i4);
            Button button = new Button();
            arrayList.add(button);
            this.votesPercents.put(votesList, button);
            if (!tLRPC$TL_messageMediaPoll.results.results.isEmpty()) {
                int size2 = tLRPC$TL_messageMediaPoll.results.results.size();
                int i5 = 0;
                while (true) {
                    if (i5 < size2) {
                        TLRPC$TL_pollAnswerVoters tLRPC$TL_pollAnswerVoters = tLRPC$TL_messageMediaPoll.results.results.get(i5);
                        if (Arrays.equals(votesList.option, tLRPC$TL_pollAnswerVoters.option)) {
                            button.votesCount = tLRPC$TL_pollAnswerVoters.voters;
                            button.decimal = (tLRPC$TL_pollAnswerVoters.voters / tLRPC$TL_messageMediaPoll.results.total_voters) * 100.0f;
                            button.percent = (int) button.decimal;
                            Button.access$3924(button, button.percent);
                            if (i2 == 0) {
                                i2 = button.percent;
                            } else if (button.percent != 0 && i2 != button.percent) {
                                z = true;
                            }
                            i -= button.percent;
                            i3 = Math.max(button.percent, i3);
                        } else {
                            i5++;
                        }
                    }
                }
            }
        }
        if (!z || i == 0) {
            return;
        }
        Collections.sort(arrayList, PollVotesAlert$$ExternalSyntheticLambda2.INSTANCE);
        int min = Math.min(i, arrayList.size());
        for (int i6 = 0; i6 < min; i6++) {
            Button.access$4012((Button) arrayList.get(i6), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateButtons$5(Button button, Button button2) {
        if (button.decimal > button2.decimal) {
            return -1;
        }
        return button.decimal < button2.decimal ? 1 : 0;
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    public void dismissInternal() {
        int size = this.queries.size();
        for (int i = 0; i < size; i++) {
            this.chatActivity.getConnectionsManager().cancelRequest(this.queries.get(i).intValue(), true);
        }
        super.dismissInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout(boolean z) {
        if (this.listView.getChildCount() <= 0) {
            RecyclerListView recyclerListView = this.listView;
            int paddingTop = recyclerListView.getPaddingTop();
            this.scrollOffsetY = paddingTop;
            recyclerListView.setTopGlowOffset(paddingTop);
            this.containerView.invalidate();
            return;
        }
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = childAt.getTop();
        int m50dp = AndroidUtilities.m50dp(7);
        if (top < AndroidUtilities.m50dp(7) || holder == null || holder.getAdapterPosition() != 0) {
            top = m50dp;
        }
        boolean z2 = top <= AndroidUtilities.m50dp(12);
        if ((z2 && this.actionBar.getTag() == null) || (!z2 && this.actionBar.getTag() != null)) {
            this.actionBar.setTag(z2 ? 1 : null);
            AnimatorSet animatorSet = this.actionBarAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.actionBarAnimation = null;
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.actionBarAnimation = animatorSet2;
            animatorSet2.setDuration(180L);
            AnimatorSet animatorSet3 = this.actionBarAnimation;
            Animator[] animatorArr = new Animator[2];
            C3366ActionBar c3366ActionBar = this.actionBar;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z2 ? 1.0f : 0.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(c3366ActionBar, property, fArr);
            View view = this.actionBarShadow;
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = z2 ? 1.0f : 0.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(view, property2, fArr2);
            animatorSet3.playTogether(animatorArr);
            this.actionBarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PollVotesAlert.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    PollVotesAlert.this.actionBarAnimation = null;
                }
            });
            this.actionBarAnimation.start();
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.listView.getLayoutParams();
        int m50dp2 = top + (layoutParams.topMargin - AndroidUtilities.m50dp(11));
        if (this.scrollOffsetY != m50dp2) {
            RecyclerListView recyclerListView2 = this.listView;
            this.scrollOffsetY = m50dp2;
            recyclerListView2.setTopGlowOffset(m50dp2 - layoutParams.topMargin);
            this.containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlaceholder() {
        if (this.placeholderPaint == null) {
            return;
        }
        int color = Theme.getColor("dialogBackground");
        int color2 = Theme.getColor("dialogBackgroundGray");
        int averageColor = AndroidUtilities.getAverageColor(color2, color);
        this.placeholderPaint.setColor(color2);
        float m50dp = AndroidUtilities.m50dp(500);
        this.gradientWidth = m50dp;
        LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m50dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{color2, averageColor, color2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.18f, 0.36f}, Shader.TileMode.REPEAT);
        this.placeholderGradient = linearGradient;
        this.placeholderPaint.setShader(linearGradient);
        Matrix matrix = new Matrix();
        this.placeholderMatrix = matrix;
        this.placeholderGradient.setLocalMatrix(matrix);
    }

    /* renamed from: org.telegram.ui.Components.PollVotesAlert$Adapter */
    /* loaded from: classes6.dex */
    public class Adapter extends RecyclerListView.SectionsAdapter {
        private Context mContext;

        @Override // org.telegram.p048ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            return null;
        }

        public Adapter(Context context) {
            int i = UserConfig.selectedAccount;
            this.mContext = context;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
        public Object getItem(int i, int i2) {
            int i3;
            if (i == 0) {
                return 293145;
            }
            int i4 = i - 1;
            if (i2 != 0) {
                if (i4 < 0 || i4 >= PollVotesAlert.this.voters.size() || (i3 = i2 - 1) >= ((VotesList) PollVotesAlert.this.voters.get(i4)).getCount()) {
                    return -182734;
                }
                return Integer.valueOf(Objects.hash(Long.valueOf(((VotesList) PollVotesAlert.this.voters.get(i4)).votes.get(i3).user_id)));
            }
            return -928312;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder, int i, int i2) {
            if (i == 0 || i2 == 0) {
                return false;
            }
            return PollVotesAlert.this.queries == null || PollVotesAlert.this.queries.isEmpty();
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
        public int getSectionCount() {
            return PollVotesAlert.this.voters.size() + 1;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
        public int getCountForSection(int i) {
            int i2 = 1;
            if (i == 0) {
                return 1;
            }
            VotesList votesList = (VotesList) PollVotesAlert.this.voters.get(i - 1);
            int count = votesList.getCount() + 1;
            if (TextUtils.isEmpty(votesList.next_offset) && !votesList.collapsed) {
                i2 = 0;
            }
            return count + i2;
        }

        private SectionCell createSectionCell() {
            return new SectionCell(this.mContext) { // from class: org.telegram.ui.Components.PollVotesAlert.Adapter.1
                {
                    PollVotesAlert pollVotesAlert = PollVotesAlert.this;
                }

                @Override // org.telegram.p048ui.Components.PollVotesAlert.SectionCell
                protected void onCollapseClick() {
                    VotesList votesList = (VotesList) getTag(C3301R.C3304id.object_tag);
                    if (votesList.votes.size() <= 15) {
                        return;
                    }
                    boolean z = !votesList.collapsed;
                    votesList.collapsed = z;
                    if (z) {
                        votesList.collapsedCount = 10;
                    }
                    PollVotesAlert.this.animateSectionUpdates(this);
                    PollVotesAlert.this.listAdapter.update(true);
                }
            };
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
        public View getSectionHeaderView(int i, View view) {
            if (view == null) {
                view = createSectionCell();
            }
            SectionCell sectionCell = (SectionCell) view;
            if (i == 0) {
                sectionCell.setAlpha(BitmapDescriptorFactory.HUE_RED);
            } else {
                view.setAlpha(1.0f);
                VotesList votesList = (VotesList) PollVotesAlert.this.voters.get(i - 1);
                int i2 = 0;
                int size = PollVotesAlert.this.poll.answers.size();
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    TLRPC$TL_pollAnswer tLRPC$TL_pollAnswer = PollVotesAlert.this.poll.answers.get(i2);
                    if (Arrays.equals(tLRPC$TL_pollAnswer.option, votesList.option) && ((Button) PollVotesAlert.this.votesPercents.get(votesList)) != null) {
                        sectionCell.setText(tLRPC$TL_pollAnswer.text, PollVotesAlert.this.calcPercent(votesList.option), votesList.count, votesList.getCollapsed(), false);
                        sectionCell.setTag(C3301R.C3304id.object_tag, votesList);
                        break;
                    }
                    i2++;
                }
            }
            return view;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            TextCell textCell;
            if (i == 0) {
                textCell = new UserCell(this.mContext);
            } else if (i == 1) {
                if (PollVotesAlert.this.titleTextView.getParent() != null) {
                    ((ViewGroup) PollVotesAlert.this.titleTextView.getParent()).removeView(PollVotesAlert.this.titleTextView);
                }
                textCell = PollVotesAlert.this.titleTextView;
            } else if (i == 2) {
                textCell = createSectionCell();
            } else {
                TextCell textCell2 = new TextCell(this.mContext, 23, true);
                textCell2.setOffsetFromImage(65);
                textCell2.setBackgroundColor(PollVotesAlert.this.getThemedColor("dialogBackground"));
                textCell2.setColors("switchTrackChecked", "windowBackgroundWhiteBlueText4");
                textCell = textCell2;
            }
            return new RecyclerListView.Holder(textCell);
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
        public void onBindViewHolder(int i, int i2, RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType != 2) {
                if (itemViewType != 3) {
                    return;
                }
                VotesList votesList = (VotesList) PollVotesAlert.this.voters.get(i - 1);
                ((TextCell) viewHolder.itemView).setTextAndIcon(LocaleController.formatPluralString("ShowVotes", votesList.count - votesList.getCount(), new Object[0]), C3301R.C3303drawable.arrow_more, false);
                return;
            }
            SectionCell sectionCell = (SectionCell) viewHolder.itemView;
            VotesList votesList2 = (VotesList) PollVotesAlert.this.voters.get(i - 1);
            votesList2.votes.get(0);
            int size = PollVotesAlert.this.poll.answers.size();
            for (int i3 = 0; i3 < size; i3++) {
                TLRPC$TL_pollAnswer tLRPC$TL_pollAnswer = PollVotesAlert.this.poll.answers.get(i3);
                if (Arrays.equals(tLRPC$TL_pollAnswer.option, votesList2.option) && ((Button) PollVotesAlert.this.votesPercents.get(votesList2)) != null) {
                    sectionCell.setText(tLRPC$TL_pollAnswer.text, PollVotesAlert.this.calcPercent(votesList2.option), votesList2.count, votesList2.getCollapsed(), false);
                    sectionCell.setTag(C3301R.C3304id.object_tag, votesList2);
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 0) {
                int adapterPosition = viewHolder.getAdapterPosition();
                int sectionForPosition = getSectionForPosition(adapterPosition);
                int positionInSectionForPosition = getPositionInSectionForPosition(adapterPosition) - 1;
                UserCell userCell = (UserCell) viewHolder.itemView;
                VotesList votesList = (VotesList) PollVotesAlert.this.voters.get(sectionForPosition - 1);
                TLRPC$MessageUserVote tLRPC$MessageUserVote = votesList.votes.get(positionInSectionForPosition);
                TLRPC$User user = tLRPC$MessageUserVote.user_id != 0 ? PollVotesAlert.this.chatActivity.getMessagesController().getUser(Long.valueOf(tLRPC$MessageUserVote.user_id)) : null;
                boolean z = true;
                if (positionInSectionForPosition == votesList.getCount() - 1 && TextUtils.isEmpty(votesList.next_offset) && !votesList.collapsed) {
                    z = false;
                }
                userCell.setData(user, positionInSectionForPosition, z);
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
        public int getItemViewType(int i, int i2) {
            if (i == 0) {
                return 1;
            }
            if (i2 == 0) {
                return 2;
            }
            return i2 + (-1) < ((VotesList) PollVotesAlert.this.voters.get(i + (-1))).getCount() ? 0 : 3;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            iArr[0] = 0;
            iArr[1] = 0;
        }
    }

    public int calcPercent(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.voters.size(); i3++) {
            VotesList votesList = this.voters.get(i3);
            if (votesList != null) {
                i += votesList.count;
                if (Arrays.equals(votesList.option, bArr)) {
                    i2 += votesList.count;
                }
            }
        }
        if (i <= 0) {
            return 0;
        }
        return Math.round((i2 / i) * 100.0f);
    }

    public void animateSectionUpdates(View view) {
        View pinnedHeader;
        int i = -2;
        while (i < this.listView.getChildCount()) {
            if (i == -2) {
                pinnedHeader = view;
            } else {
                pinnedHeader = i == -1 ? this.listView.getPinnedHeader() : this.listView.getChildAt(i);
            }
            if (pinnedHeader instanceof SectionCell) {
                int i2 = C3301R.C3304id.object_tag;
                if (pinnedHeader.getTag(i2) instanceof VotesList) {
                    SectionCell sectionCell = (SectionCell) pinnedHeader;
                    VotesList votesList = (VotesList) pinnedHeader.getTag(i2);
                    int i3 = 0;
                    int size = this.poll.answers.size();
                    while (true) {
                        if (i3 < size) {
                            TLRPC$TL_pollAnswer tLRPC$TL_pollAnswer = this.poll.answers.get(i3);
                            if (Arrays.equals(tLRPC$TL_pollAnswer.option, votesList.option) && this.votesPercents.get(votesList) != null) {
                                sectionCell.setText(tLRPC$TL_pollAnswer.text, calcPercent(votesList.option), votesList.count, votesList.getCollapsed(), true);
                                sectionCell.setTag(C3301R.C3304id.object_tag, votesList);
                                break;
                            }
                            i3++;
                        }
                    }
                }
            }
            i++;
        }
        this.listView.relayoutPinnedHeader();
        this.listView.invalidate();
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda5
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                PollVotesAlert.this.updatePlaceholder();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.containerView, 0, null, null, null, null, "key_sheet_scrollUp"));
        arrayList.add(new ThemeDescription(this.containerView, 0, null, null, new Drawable[]{this.shadowDrawable}, null, "dialogBackground"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "dialogBackground"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "dialogScrollGlow"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "dialogTextBlack"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "dialogTextBlack"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBTITLECOLOR, null, null, null, null, "player_actionBarSubtitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "dialogTextBlack"));
        arrayList.add(new ThemeDescription(this.titleTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "dialogTextBlack"));
        arrayList.add(new ThemeDescription(this.actionBarShadow, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "dialogShadowLine"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, "dialogBackground"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, "dialogBackgroundGray"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SECTIONS, new Class[]{SectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "key_graySectionText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SECTIONS, new Class[]{SectionCell.class}, new String[]{"middleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "key_graySectionText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SECTIONS, new Class[]{SectionCell.class}, new String[]{"righTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "key_graySectionText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_SECTIONS, new Class[]{SectionCell.class}, null, null, null, "graySection"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "dialogTextBlack"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueText4"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        return arrayList;
    }
}
