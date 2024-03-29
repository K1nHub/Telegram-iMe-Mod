package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatPhoto;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserProfilePhoto;
/* renamed from: org.telegram.ui.Cells.MentionCell */
/* loaded from: classes5.dex */
public class MentionCell extends LinearLayout {
    private boolean attached;
    private final AvatarDrawable avatarDrawable;
    private Drawable emojiDrawable;
    private final BackupImageView imageView;
    private final TextView nameTextView;
    private boolean needsDivider;
    private final Theme.ResourcesProvider resourcesProvider;
    private final TextView usernameTextView;

    public MentionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.needsDivider = false;
        this.resourcesProvider = resourcesProvider;
        setOrientation(0);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        avatarDrawable.setTextSize(AndroidUtilities.m107dp(18));
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m107dp(14));
        addView(backupImageView, LayoutHelper.createLinear(28, 28, 12, 4, 0, 0));
        TextView textView = new TextView(this, context) { // from class: org.telegram.ui.Cells.MentionCell.1
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        this.nameTextView = textView;
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 15.0f);
        textView.setSingleLine(true);
        textView.setGravity(3);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        addView(textView, LayoutHelper.createLinear(-2, -2, 16, 12, 0, 0, 0));
        TextView textView2 = new TextView(context);
        this.usernameTextView = textView2;
        textView2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
        textView2.setTextSize(1, 15.0f);
        textView2.setSingleLine(true);
        textView2.setGravity(3);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        addView(textView2, LayoutHelper.createLinear(-2, -2, 16, 12, 0, 8, 0));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(36), 1073741824));
    }

    public void setUser(TLRPC$User tLRPC$User) {
        resetEmojiSuggestion();
        if (tLRPC$User == null) {
            this.nameTextView.setText("");
            this.usernameTextView.setText("");
            this.imageView.setImageDrawable(null);
            return;
        }
        this.avatarDrawable.setInfo(tLRPC$User);
        TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = tLRPC$User.photo;
        if (tLRPC$UserProfilePhoto != null && tLRPC$UserProfilePhoto.photo_small != null) {
            this.imageView.setForUserOrChat(tLRPC$User, this.avatarDrawable);
        } else {
            this.imageView.setImageDrawable(this.avatarDrawable);
        }
        this.nameTextView.setText(UserObject.getUserName(tLRPC$User));
        if (UserObject.getPublicUsername(tLRPC$User) != null) {
            TextView textView = this.usernameTextView;
            textView.setText("@" + UserObject.getPublicUsername(tLRPC$User));
        } else {
            this.usernameTextView.setText("");
        }
        this.imageView.setVisibility(0);
        this.usernameTextView.setVisibility(0);
    }

    public void setDivider(boolean z) {
        if (z != this.needsDivider) {
            this.needsDivider = z;
            setWillNotDraw(!z);
            invalidate();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.needsDivider) {
            canvas.drawLine(AndroidUtilities.m107dp(52), getHeight() - 1, getWidth() - AndroidUtilities.m107dp(8), getHeight() - 1, Theme.dividerPaint);
        }
    }

    public void setChat(TLRPC$Chat tLRPC$Chat) {
        resetEmojiSuggestion();
        if (tLRPC$Chat == null) {
            this.nameTextView.setText("");
            this.usernameTextView.setText("");
            this.imageView.setImageDrawable(null);
            return;
        }
        this.avatarDrawable.setInfo(tLRPC$Chat);
        TLRPC$ChatPhoto tLRPC$ChatPhoto = tLRPC$Chat.photo;
        if (tLRPC$ChatPhoto != null && tLRPC$ChatPhoto.photo_small != null) {
            this.imageView.setForUserOrChat(tLRPC$Chat, this.avatarDrawable);
        } else {
            this.imageView.setImageDrawable(this.avatarDrawable);
        }
        this.nameTextView.setText(tLRPC$Chat.title);
        String publicUsername = ChatObject.getPublicUsername(tLRPC$Chat);
        if (publicUsername != null) {
            TextView textView = this.usernameTextView;
            textView.setText("@" + publicUsername);
        } else {
            this.usernameTextView.setText("");
        }
        this.imageView.setVisibility(0);
        this.usernameTextView.setVisibility(0);
    }

    public void setText(String str) {
        resetEmojiSuggestion();
        this.imageView.setVisibility(4);
        this.usernameTextView.setVisibility(4);
        this.nameTextView.setText(str);
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.nameTextView.invalidate();
    }

    public void resetEmojiSuggestion() {
        this.nameTextView.setPadding(0, 0, 0, 0);
        Drawable drawable = this.emojiDrawable;
        if (drawable != null) {
            if (drawable instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable).removeView(this);
            }
            this.emojiDrawable = null;
            invalidate();
        }
    }

    public void setEmojiSuggestion(MediaDataController.KeywordResult keywordResult) {
        this.imageView.setVisibility(4);
        this.usernameTextView.setVisibility(4);
        String str = keywordResult.emoji;
        if (str != null && str.startsWith("animated_")) {
            try {
                Drawable drawable = this.emojiDrawable;
                if (drawable instanceof AnimatedEmojiDrawable) {
                    ((AnimatedEmojiDrawable) drawable).removeView(this);
                    this.emojiDrawable = null;
                }
                AnimatedEmojiDrawable make = AnimatedEmojiDrawable.make(UserConfig.selectedAccount, 0, Long.parseLong(keywordResult.emoji.substring(9)));
                this.emojiDrawable = make;
                if (this.attached) {
                    make.addView(this);
                }
            } catch (Exception unused) {
                this.emojiDrawable = Emoji.getEmojiDrawable(keywordResult.emoji);
            }
        } else {
            this.emojiDrawable = Emoji.getEmojiDrawable(keywordResult.emoji);
        }
        if (this.emojiDrawable == null) {
            this.nameTextView.setPadding(0, 0, 0, 0);
            TextView textView = this.nameTextView;
            StringBuilder sb = new StringBuilder();
            sb.append(keywordResult.emoji);
            sb.append(":  ");
            sb.append(keywordResult.keyword);
            textView.setText(sb);
            return;
        }
        this.nameTextView.setPadding(AndroidUtilities.m107dp(22), 0, 0, 0);
        TextView textView2 = this.nameTextView;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(":  ");
        sb2.append(keywordResult.keyword);
        textView2.setText(sb2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Drawable drawable = this.emojiDrawable;
        if (drawable != null) {
            int m107dp = AndroidUtilities.m107dp(drawable instanceof AnimatedEmojiDrawable ? 24 : 20);
            int m107dp2 = AndroidUtilities.m107dp(this.emojiDrawable instanceof AnimatedEmojiDrawable ? -2 : 0);
            this.emojiDrawable.setBounds(this.nameTextView.getLeft() + m107dp2, ((this.nameTextView.getTop() + this.nameTextView.getBottom()) - m107dp) / 2, this.nameTextView.getLeft() + m107dp2 + m107dp, ((this.nameTextView.getTop() + this.nameTextView.getBottom()) + m107dp) / 2);
            Drawable drawable2 = this.emojiDrawable;
            if (drawable2 instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable2).setTime(System.currentTimeMillis());
            }
            this.emojiDrawable.draw(canvas);
        }
    }

    public void setBotCommand(String str, String str2, TLRPC$User tLRPC$User) {
        resetEmojiSuggestion();
        if (tLRPC$User != null) {
            this.imageView.setVisibility(0);
            this.avatarDrawable.setInfo(tLRPC$User);
            TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = tLRPC$User.photo;
            if (tLRPC$UserProfilePhoto != null && tLRPC$UserProfilePhoto.photo_small != null) {
                this.imageView.setForUserOrChat(tLRPC$User, this.avatarDrawable);
            } else {
                this.imageView.setImageDrawable(this.avatarDrawable);
            }
        } else {
            this.imageView.setVisibility(4);
        }
        this.usernameTextView.setVisibility(0);
        this.nameTextView.setText(str);
        TextView textView = this.usernameTextView;
        textView.setText(Emoji.replaceEmoji((CharSequence) str2, textView.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(20), false));
    }

    public void setIsDarkTheme(boolean z) {
        if (z) {
            this.nameTextView.setTextColor(-1);
            this.usernameTextView.setTextColor(-4473925);
            return;
        }
        this.nameTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        this.usernameTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        Drawable drawable = this.emojiDrawable;
        if (drawable instanceof AnimatedEmojiDrawable) {
            ((AnimatedEmojiDrawable) drawable).removeView(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        Drawable drawable = this.emojiDrawable;
        if (drawable instanceof AnimatedEmojiDrawable) {
            ((AnimatedEmojiDrawable) drawable).addView(this);
        }
    }
}
