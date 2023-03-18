package org.telegram.p048ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.XiaomiUtilities;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.Bulletin;
import org.telegram.p048ui.Components.LinkSpanDrawable;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.TranslateAlert2;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messageEntityCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_messageEntityMention;
import org.telegram.tgnet.TLRPC$TL_messageEntityTextUrl;
import org.telegram.tgnet.TLRPC$TL_messageEntityUrl;
import org.telegram.tgnet.TLRPC$TL_messages_translateResult;
import org.telegram.tgnet.TLRPC$TL_messages_translateText;
import org.telegram.tgnet.TLRPC$TL_textWithEntities;
/* renamed from: org.telegram.ui.Components.TranslateAlert2 */
/* loaded from: classes6.dex */
public class TranslateAlert2 extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private static HashMap<String, Locale> localesByCode;
    private PaddedAdapter adapter;
    private Boolean buttonShadowShown;
    private View buttonShadowView;
    private TextView buttonTextView;
    private FrameLayout buttonView;
    private boolean firstTranslation;
    private BaseFragment fragment;
    private String fromLanguage;
    private HeaderView headerView;
    private RecyclerListView listView;
    private LoadingTextView loadingTextView;
    private Utilities.CallbackReturn<URLSpan, Boolean> onLinkPress;
    private String prevToLanguage;
    private Integer reqId;
    private ArrayList<TLRPC$MessageEntity> reqMessageEntities;
    private int reqMessageId;
    private TLRPC$InputPeer reqPeer;
    private CharSequence reqText;
    private AnimatedFloat sheetTopAnimated;
    private boolean sheetTopNotAnimate;
    private LinkSpanDrawable.LinksTextView textView;
    private FrameLayout textViewContainer;
    private String toLanguage;

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public static ArrayList<CharSequence> cutInBlocks(CharSequence charSequence, int i) {
        ArrayList<CharSequence> arrayList = new ArrayList<>();
        if (charSequence == null) {
            return arrayList;
        }
        while (charSequence.length() > i) {
            String charSequence2 = charSequence.subSequence(0, i).toString();
            int lastIndexOf = charSequence2.lastIndexOf("\n\n");
            if (lastIndexOf == -1) {
                lastIndexOf = charSequence2.lastIndexOf("\n");
            }
            if (lastIndexOf == -1) {
                lastIndexOf = charSequence2.lastIndexOf(". ");
            }
            if (lastIndexOf == -1) {
                lastIndexOf = Math.min(charSequence2.length(), i);
            }
            int i2 = lastIndexOf + 1;
            arrayList.add(charSequence.subSequence(0, i2));
            charSequence = charSequence.subSequence(i2, charSequence.length());
        }
        if (charSequence.length() > 0) {
            arrayList.add(charSequence);
        }
        return arrayList;
    }

    public TranslateAlert2(Context context, String str, String str2, CharSequence charSequence, ArrayList<TLRPC$MessageEntity> arrayList, Theme.ResourcesProvider resourcesProvider) {
        this(context, str, str2, charSequence, arrayList, null, 0, resourcesProvider);
    }

    private TranslateAlert2(Context context, String str, String str2, CharSequence charSequence, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$InputPeer tLRPC$InputPeer, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context, false, resourcesProvider);
        this.firstTranslation = true;
        this.backgroundPaddingLeft = 0;
        fixNavigationBar();
        this.reqText = charSequence;
        this.reqPeer = tLRPC$InputPeer;
        this.reqMessageId = i;
        this.fromLanguage = str;
        this.toLanguage = str2;
        ContainerView containerView = new ContainerView(context);
        this.containerView = containerView;
        this.sheetTopAnimated = new AnimatedFloat(containerView, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        LoadingTextView loadingTextView = new LoadingTextView(this, context);
        this.loadingTextView = loadingTextView;
        loadingTextView.setPadding(AndroidUtilities.m50dp(22), AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(22), AndroidUtilities.m50dp(6));
        this.loadingTextView.setTextSize(1, SharedConfig.fontSize);
        this.loadingTextView.setTextColor(getThemedColor("dialogTextBlack"));
        this.loadingTextView.setLinkTextColor(Theme.multAlpha(getThemedColor("dialogTextBlack"), 0.2f));
        this.loadingTextView.setText(Emoji.replaceEmoji(charSequence == null ? "" : charSequence.toString(), this.loadingTextView.getPaint().getFontMetricsInt(), true));
        this.textViewContainer = new FrameLayout(this, context) { // from class: org.telegram.ui.Components.TranslateAlert2.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824), i3);
            }
        };
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        this.textView = linksTextView;
        linksTextView.setDisablePaddingsOffsetY(true);
        this.textView.setPadding(AndroidUtilities.m50dp(22), AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(22), AndroidUtilities.m50dp(6));
        this.textView.setTextSize(1, SharedConfig.fontSize);
        this.textView.setTextColor(getThemedColor("dialogTextBlack"));
        this.textView.setLinkTextColor(getThemedColor("chat_messageLinkIn"));
        this.textView.setTextIsSelectable(true);
        this.textView.setHighlightColor(getThemedColor("chat_inTextSelectionHighlight"));
        int themedColor = getThemedColor("chat_TextSelectionCursor");
        try {
            if (Build.VERSION.SDK_INT >= 29 && !XiaomiUtilities.isMIUI()) {
                Drawable textSelectHandleLeft = this.textView.getTextSelectHandleLeft();
                textSelectHandleLeft.setColorFilter(themedColor, PorterDuff.Mode.SRC_IN);
                this.textView.setTextSelectHandleLeft(textSelectHandleLeft);
                Drawable textSelectHandleRight = this.textView.getTextSelectHandleRight();
                textSelectHandleRight.setColorFilter(themedColor, PorterDuff.Mode.SRC_IN);
                this.textView.setTextSelectHandleRight(textSelectHandleRight);
            }
        } catch (Exception unused) {
        }
        this.textViewContainer.addView(this.textView, LayoutHelper.createFrame(-1, -1));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.TranslateAlert2.2
            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
                return true;
            }

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
            public void requestChildFocus(View view, View view2) {
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && motionEvent.getY() < TranslateAlert2.this.getSheetTop() - getTop()) {
                    TranslateAlert2.this.dismiss();
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setOverScrollMode(1);
        this.listView.setPadding(0, AndroidUtilities.statusBarHeight + AndroidUtilities.m50dp(56), 0, AndroidUtilities.m50dp(80));
        this.listView.setClipToPadding(true);
        this.listView.setLayoutManager(new LinearLayoutManager(context));
        RecyclerListView recyclerListView2 = this.listView;
        PaddedAdapter paddedAdapter = new PaddedAdapter(context, this.loadingTextView);
        this.adapter = paddedAdapter;
        recyclerListView2.setAdapter(paddedAdapter);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.TranslateAlert2.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                ((BottomSheet) TranslateAlert2.this).containerView.invalidate();
                TranslateAlert2 translateAlert2 = TranslateAlert2.this;
                translateAlert2.updateButtonShadow(translateAlert2.listView.canScrollVertically(1));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                if (i2 == 0) {
                    TranslateAlert2.this.sheetTopNotAnimate = false;
                }
                if ((i2 == 0 || i2 == 2) && TranslateAlert2.this.getSheetTop(false) > BitmapDescriptorFactory.HUE_RED && TranslateAlert2.this.getSheetTop(false) < AndroidUtilities.m50dp(96) && TranslateAlert2.this.listView.canScrollVertically(1) && TranslateAlert2.this.hasEnoughHeight()) {
                    TranslateAlert2.this.sheetTopNotAnimate = true;
                    TranslateAlert2.this.listView.smoothScrollBy(0, (int) TranslateAlert2.this.getSheetTop(false));
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.TranslateAlert2.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onChangeAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                ((BottomSheet) TranslateAlert2.this).containerView.invalidate();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                ((BottomSheet) TranslateAlert2.this).containerView.invalidate();
            }
        };
        defaultItemAnimator.setDurations(180L);
        defaultItemAnimator.setInterpolator(new LinearInterpolator());
        this.listView.setItemAnimator(defaultItemAnimator);
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -2, 80));
        HeaderView headerView = new HeaderView(context);
        this.headerView = headerView;
        this.containerView.addView(headerView, LayoutHelper.createFrame(-1, 78, 55));
        FrameLayout frameLayout = new FrameLayout(context);
        this.buttonView = frameLayout;
        frameLayout.setBackgroundColor(getThemedColor("dialogBackground"));
        View view = new View(context);
        this.buttonShadowView = view;
        view.setBackgroundColor(getThemedColor("dialogShadowLine"));
        this.buttonShadowView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.buttonView.addView(this.buttonShadowView, LayoutHelper.createFrame(-1.0f, AndroidUtilities.getShadowHeight() / AndroidUtilities.dpf2(1.0f), 55));
        TextView textView = new TextView(context);
        this.buttonTextView = textView;
        textView.setLines(1);
        this.buttonTextView.setSingleLine(true);
        this.buttonTextView.setGravity(1);
        this.buttonTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.buttonTextView.setGravity(17);
        this.buttonTextView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        this.buttonTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.buttonTextView.setTextSize(1, 14.0f);
        this.buttonTextView.setText(LocaleController.getString("CloseTranslation", C3286R.string.CloseTranslation));
        this.buttonTextView.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor("featuredStickers_addButton"), 6.0f));
        this.buttonTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateAlert2$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TranslateAlert2.this.lambda$new$0(view2);
            }
        });
        this.buttonView.addView(this.buttonTextView, LayoutHelper.createFrame(-1, 48, 87, 16, 16, 16, 16));
        this.containerView.addView(this.buttonView, LayoutHelper.createFrame(-1, -2, 87));
        translate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasEnoughHeight() {
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            if (this.listView.getChildAdapterPosition(childAt) == 1) {
                f += childAt.getHeight();
            }
        }
        return f >= ((float) ((this.listView.getHeight() - this.listView.getPaddingTop()) - this.listView.getPaddingBottom()));
    }

    public void translate() {
        if (this.reqId != null) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId.intValue(), true);
            this.reqId = null;
        }
        TLRPC$TL_messages_translateText tLRPC$TL_messages_translateText = new TLRPC$TL_messages_translateText();
        final TLRPC$TL_textWithEntities tLRPC$TL_textWithEntities = new TLRPC$TL_textWithEntities();
        CharSequence charSequence = this.reqText;
        tLRPC$TL_textWithEntities.text = charSequence == null ? "" : charSequence.toString();
        ArrayList<TLRPC$MessageEntity> arrayList = this.reqMessageEntities;
        if (arrayList != null) {
            tLRPC$TL_textWithEntities.entities = arrayList;
        }
        TLRPC$InputPeer tLRPC$InputPeer = this.reqPeer;
        if (tLRPC$InputPeer != null) {
            tLRPC$TL_messages_translateText.flags = 1 | tLRPC$TL_messages_translateText.flags;
            tLRPC$TL_messages_translateText.peer = tLRPC$InputPeer;
            tLRPC$TL_messages_translateText.f1609id.add(Integer.valueOf(this.reqMessageId));
        } else {
            tLRPC$TL_messages_translateText.flags |= 2;
            tLRPC$TL_messages_translateText.text.add(tLRPC$TL_textWithEntities);
        }
        String str = this.toLanguage;
        if (str != null) {
            str = str.split("_")[0];
        }
        if ("nb".equals(str)) {
            str = "no";
        }
        tLRPC$TL_messages_translateText.to_lang = str;
        this.reqId = Integer.valueOf(ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_translateText, new RequestDelegate() { // from class: org.telegram.ui.Components.TranslateAlert2$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                TranslateAlert2.this.lambda$translate$2(tLRPC$TL_textWithEntities, tLObject, tLRPC$TL_error);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translate$2(final TLRPC$TL_textWithEntities tLRPC$TL_textWithEntities, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranslateAlert2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                TranslateAlert2.this.lambda$translate$1(tLObject, tLRPC$TL_textWithEntities);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translate$1(TLObject tLObject, TLRPC$TL_textWithEntities tLRPC$TL_textWithEntities) {
        this.reqId = null;
        if (tLObject instanceof TLRPC$TL_messages_translateResult) {
            TLRPC$TL_messages_translateResult tLRPC$TL_messages_translateResult = (TLRPC$TL_messages_translateResult) tLObject;
            if (!tLRPC$TL_messages_translateResult.result.isEmpty() && tLRPC$TL_messages_translateResult.result.get(0) != null && tLRPC$TL_messages_translateResult.result.get(0).text != null) {
                this.firstTranslation = false;
                TLRPC$TL_textWithEntities preprocess = preprocess(tLRPC$TL_textWithEntities, tLRPC$TL_messages_translateResult.result.get(0));
                SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(preprocess.text);
                MessageObject.addEntitiesToText(valueOf, preprocess.entities, false, true, false, false);
                this.textView.setText(preprocessText(valueOf));
                this.adapter.updateMainView(this.textViewContainer);
                return;
            }
        }
        if (this.firstTranslation) {
            dismiss();
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.showBulletin, 1, LocaleController.getString("TranslationFailedAlert2", C3286R.string.TranslationFailedAlert2));
            return;
        }
        BulletinFactory.m28of((FrameLayout) this.containerView, this.resourcesProvider).createErrorBulletin(LocaleController.getString("TranslationFailedAlert2", C3286R.string.TranslationFailedAlert2)).show();
        AnimatedTextView animatedTextView = this.headerView.toLanguageTextView;
        String str = this.prevToLanguage;
        this.toLanguage = str;
        animatedTextView.setText(languageName(str));
        this.adapter.updateMainView(this.textViewContainer);
    }

    public static TLRPC$TL_textWithEntities preprocess(TLRPC$TL_textWithEntities tLRPC$TL_textWithEntities, TLRPC$TL_textWithEntities tLRPC$TL_textWithEntities2) {
        Emoji.EmojiSpanRange emojiSpanRange;
        boolean z;
        if (tLRPC$TL_textWithEntities2 == null || tLRPC$TL_textWithEntities2.text == null) {
            return null;
        }
        for (int i = 0; i < tLRPC$TL_textWithEntities2.entities.size(); i++) {
            TLRPC$MessageEntity tLRPC$MessageEntity = tLRPC$TL_textWithEntities2.entities.get(i);
            if ((tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityTextUrl) && tLRPC$MessageEntity.url != null) {
                String str = tLRPC$TL_textWithEntities2.text;
                int i2 = tLRPC$MessageEntity.offset;
                String substring = str.substring(i2, tLRPC$MessageEntity.length + i2);
                if (TextUtils.equals(substring, tLRPC$MessageEntity.url)) {
                    TLRPC$TL_messageEntityUrl tLRPC$TL_messageEntityUrl = new TLRPC$TL_messageEntityUrl();
                    tLRPC$TL_messageEntityUrl.offset = tLRPC$MessageEntity.offset;
                    tLRPC$TL_messageEntityUrl.length = tLRPC$MessageEntity.length;
                    tLRPC$TL_textWithEntities2.entities.set(i, tLRPC$TL_messageEntityUrl);
                } else if (tLRPC$MessageEntity.url.startsWith("https://t.me/") && substring.startsWith("@") && TextUtils.equals(substring.substring(1), tLRPC$MessageEntity.url.substring(13))) {
                    TLRPC$TL_messageEntityMention tLRPC$TL_messageEntityMention = new TLRPC$TL_messageEntityMention();
                    tLRPC$TL_messageEntityMention.offset = tLRPC$MessageEntity.offset;
                    tLRPC$TL_messageEntityMention.length = tLRPC$MessageEntity.length;
                    tLRPC$TL_textWithEntities2.entities.set(i, tLRPC$TL_messageEntityMention);
                }
            }
        }
        if (tLRPC$TL_textWithEntities != null && tLRPC$TL_textWithEntities.text != null && !tLRPC$TL_textWithEntities.entities.isEmpty()) {
            HashMap<String, ArrayList<Emoji.EmojiSpanRange>> groupEmojiRanges = groupEmojiRanges(tLRPC$TL_textWithEntities.text);
            HashMap<String, ArrayList<Emoji.EmojiSpanRange>> groupEmojiRanges2 = groupEmojiRanges(tLRPC$TL_textWithEntities2.text);
            for (int i3 = 0; i3 < tLRPC$TL_textWithEntities.entities.size(); i3++) {
                TLRPC$MessageEntity tLRPC$MessageEntity2 = tLRPC$TL_textWithEntities.entities.get(i3);
                if (tLRPC$MessageEntity2 instanceof TLRPC$TL_messageEntityCustomEmoji) {
                    String str2 = tLRPC$TL_textWithEntities.text;
                    int i4 = tLRPC$MessageEntity2.offset;
                    String substring2 = str2.substring(i4, tLRPC$MessageEntity2.length + i4);
                    if (!TextUtils.isEmpty(substring2)) {
                        ArrayList<Emoji.EmojiSpanRange> arrayList = groupEmojiRanges.get(substring2);
                        ArrayList<Emoji.EmojiSpanRange> arrayList2 = groupEmojiRanges2.get(substring2);
                        if (arrayList != null && arrayList2 != null) {
                            int i5 = -1;
                            int i6 = 0;
                            while (true) {
                                if (i6 >= arrayList.size()) {
                                    break;
                                }
                                Emoji.EmojiSpanRange emojiSpanRange2 = arrayList.get(i6);
                                int i7 = emojiSpanRange2.start;
                                int i8 = tLRPC$MessageEntity2.offset;
                                if (i7 == i8 && emojiSpanRange2.end == i8 + tLRPC$MessageEntity2.length) {
                                    i5 = i6;
                                    break;
                                }
                                i6++;
                            }
                            if (i5 >= 0 && i5 < arrayList2.size() && (emojiSpanRange = arrayList2.get(i5)) != null) {
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= tLRPC$TL_textWithEntities2.entities.size()) {
                                        z = false;
                                        break;
                                    }
                                    TLRPC$MessageEntity tLRPC$MessageEntity3 = tLRPC$TL_textWithEntities2.entities.get(i9);
                                    if (tLRPC$MessageEntity3 instanceof TLRPC$TL_messageEntityCustomEmoji) {
                                        int i10 = emojiSpanRange.start;
                                        int i11 = emojiSpanRange.end;
                                        int i12 = tLRPC$MessageEntity3.offset;
                                        if (AndroidUtilities.intersect1d(i10, i11, i12, tLRPC$MessageEntity3.length + i12)) {
                                            z = true;
                                            break;
                                        }
                                    }
                                    i9++;
                                }
                                if (!z) {
                                    TLRPC$TL_messageEntityCustomEmoji tLRPC$TL_messageEntityCustomEmoji = new TLRPC$TL_messageEntityCustomEmoji();
                                    TLRPC$TL_messageEntityCustomEmoji tLRPC$TL_messageEntityCustomEmoji2 = (TLRPC$TL_messageEntityCustomEmoji) tLRPC$MessageEntity2;
                                    tLRPC$TL_messageEntityCustomEmoji.document_id = tLRPC$TL_messageEntityCustomEmoji2.document_id;
                                    tLRPC$TL_messageEntityCustomEmoji.document = tLRPC$TL_messageEntityCustomEmoji2.document;
                                    int i13 = emojiSpanRange.start;
                                    tLRPC$TL_messageEntityCustomEmoji.offset = i13;
                                    tLRPC$TL_messageEntityCustomEmoji.length = emojiSpanRange.end - i13;
                                    tLRPC$TL_textWithEntities2.entities.add(tLRPC$TL_messageEntityCustomEmoji);
                                }
                            }
                        }
                    }
                }
            }
        }
        return tLRPC$TL_textWithEntities2;
    }

    private static HashMap<String, ArrayList<Emoji.EmojiSpanRange>> groupEmojiRanges(CharSequence charSequence) {
        ArrayList<Emoji.EmojiSpanRange> parseEmojis;
        HashMap<String, ArrayList<Emoji.EmojiSpanRange>> hashMap = new HashMap<>();
        if (charSequence == null || (parseEmojis = Emoji.parseEmojis(charSequence)) == null) {
            return hashMap;
        }
        String charSequence2 = charSequence.toString();
        for (int i = 0; i < parseEmojis.size(); i++) {
            Emoji.EmojiSpanRange emojiSpanRange = parseEmojis.get(i);
            if (emojiSpanRange != null && emojiSpanRange.code != null) {
                String substring = charSequence2.substring(emojiSpanRange.start, emojiSpanRange.end);
                ArrayList<Emoji.EmojiSpanRange> arrayList = hashMap.get(substring);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    hashMap.put(substring, arrayList);
                }
                arrayList.add(emojiSpanRange);
            }
        }
        return hashMap;
    }

    private CharSequence preprocessText(CharSequence charSequence) {
        URLSpan[] uRLSpanArr;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        if (this.onLinkPress != null || this.fragment != null) {
            for (final URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class)) {
                int spanStart = spannableStringBuilder.getSpanStart(uRLSpan);
                int spanEnd = spannableStringBuilder.getSpanEnd(uRLSpan);
                if (spanStart != -1 && spanEnd != -1) {
                    spannableStringBuilder.removeSpan(uRLSpan);
                    spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.TranslateAlert2.5
                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view) {
                            if (TranslateAlert2.this.onLinkPress != null) {
                                if (((Boolean) TranslateAlert2.this.onLinkPress.run(uRLSpan)).booleanValue()) {
                                    TranslateAlert2.this.dismiss();
                                }
                            } else if (TranslateAlert2.this.fragment != null) {
                                AlertsCreator.showOpenUrlAlert(TranslateAlert2.this.fragment, uRLSpan.getURL(), false, false);
                            }
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            int min = Math.min(textPaint.getAlpha(), (textPaint.getColor() >> 24) & 255);
                            if (!(uRLSpan instanceof URLSpanNoUnderline)) {
                                textPaint.setUnderlineText(true);
                            }
                            textPaint.setColor(Theme.getColor("dialogTextLink"));
                            textPaint.setAlpha(min);
                        }
                    }, spanStart, spanEnd, 33);
                }
            }
        }
        return Emoji.replaceEmoji(spannableStringBuilder, this.textView.getPaint().getFontMetricsInt(), true);
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    public void dismissInternal() {
        if (this.reqId != null) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId.intValue(), true);
            this.reqId = null;
        }
        super.dismissInternal();
    }

    public void setFragment(BaseFragment baseFragment) {
        this.fragment = baseFragment;
    }

    public void setOnLinkPress(Utilities.CallbackReturn<URLSpan, Boolean> callbackReturn) {
        this.onLinkPress = callbackReturn;
    }

    public void setNoforwards(boolean z) {
        LinkSpanDrawable.LinksTextView linksTextView = this.textView;
        if (linksTextView != null) {
            linksTextView.setTextIsSelectable(!z);
        }
        if (z) {
            getWindow().addFlags(8192);
        } else {
            getWindow().clearFlags(8192);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.TranslateAlert2$LoadingTextView */
    /* loaded from: classes6.dex */
    public class LoadingTextView extends TextView {
        private final LoadingDrawable loadingDrawable;
        private final LinkPath path;

        public LoadingTextView(TranslateAlert2 translateAlert2, Context context) {
            super(context);
            LinkPath linkPath = new LinkPath(true);
            this.path = linkPath;
            LoadingDrawable loadingDrawable = new LoadingDrawable();
            this.loadingDrawable = loadingDrawable;
            loadingDrawable.usePath(linkPath);
            loadingDrawable.setSpeed(0.65f);
            loadingDrawable.setRadiiDp(4.0f);
            setBackground(loadingDrawable);
        }

        @Override // android.widget.TextView
        public void setTextColor(int i) {
            super.setTextColor(Theme.multAlpha(i, 0.2f));
            this.loadingDrawable.setColors(Theme.multAlpha(i, 0.03f), Theme.multAlpha(i, 0.175f), Theme.multAlpha(i, 0.2f), Theme.multAlpha(i, 0.45f));
        }

        private void updateDrawable() {
            LinkPath linkPath = this.path;
            if (linkPath == null || this.loadingDrawable == null) {
                return;
            }
            linkPath.rewind();
            if (getLayout() != null && getLayout().getText() != null) {
                this.path.setCurrentLayout(getLayout(), 0, getPaddingLeft(), getPaddingTop());
                getLayout().getSelectionPath(0, getLayout().getText().length(), this.path);
            }
            this.loadingDrawable.updateBounds();
        }

        @Override // android.widget.TextView
        public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
            super.setText(charSequence, bufferType);
            updateDrawable();
        }

        @Override // android.widget.TextView, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            updateDrawable();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.loadingDrawable.reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.TranslateAlert2$PaddedAdapter */
    /* loaded from: classes6.dex */
    public static class PaddedAdapter extends RecyclerView.Adapter {
        private Context mContext;
        private View mMainView;
        private int mainViewType = 1;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public PaddedAdapter(Context context, View view) {
            this.mContext = context;
            this.mMainView = view;
        }

        public void updateMainView(View view) {
            if (this.mMainView == view) {
                return;
            }
            this.mainViewType++;
            this.mMainView = view;
            notifyItemChanged(1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                return new RecyclerListView.Holder(new View(this, this.mContext) { // from class: org.telegram.ui.Components.TranslateAlert2.PaddedAdapter.1
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824), View.MeasureSpec.makeMeasureSpec((int) (AndroidUtilities.displaySize.y * 0.4f), 1073741824));
                    }
                });
            }
            return new RecyclerListView.Holder(this.mMainView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 0;
            }
            return this.mainViewType;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getSheetTop() {
        return getSheetTop(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getSheetTop(boolean z) {
        AnimatedFloat animatedFloat;
        float top = this.listView.getTop();
        if (this.listView.getChildCount() >= 1) {
            RecyclerListView recyclerListView = this.listView;
            top += Math.max(0, recyclerListView.getChildAt(recyclerListView.getChildCount() - 1).getTop());
        }
        float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, top - AndroidUtilities.m50dp(78));
        if (!z || (animatedFloat = this.sheetTopAnimated) == null) {
            return max;
        }
        if (!this.listView.scrollingByUser && !this.sheetTopNotAnimate) {
            return animatedFloat.set(max);
        }
        animatedFloat.set(max, true);
        return max;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.TranslateAlert2$HeaderView */
    /* loaded from: classes6.dex */
    public class HeaderView extends FrameLayout {
        private ImageView arrowView;
        private ImageView backButton;
        private View backgroundView;
        private TextView fromLanguageTextView;
        private View shadow;
        private LinearLayout subtitleView;
        private TextView titleTextView;
        private AnimatedTextView toLanguageTextView;

        public HeaderView(Context context) {
            super(context);
            View view = new View(context);
            this.backgroundView = view;
            view.setBackgroundColor(TranslateAlert2.this.getThemedColor("dialogBackground"));
            addView(this.backgroundView, LayoutHelper.createFrame(-1, 44, 55, 0, 12, 0, 0));
            ImageView imageView = new ImageView(context);
            this.backButton = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.backButton.setImageResource(C3286R.C3288drawable.ic_ab_back);
            this.backButton.setColorFilter(new PorterDuffColorFilter(TranslateAlert2.this.getThemedColor("dialogTextBlack"), PorterDuff.Mode.MULTIPLY));
            this.backButton.setBackground(Theme.createSelectorDrawable(TranslateAlert2.this.getThemedColor("listSelectorSDK21")));
            this.backButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.backButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TranslateAlert2.HeaderView.this.lambda$new$0(view2);
                }
            });
            addView(this.backButton, LayoutHelper.createFrame(54, 54, 48, 1, 1, 1, 1));
            TextView textView = new TextView(context, TranslateAlert2.this) { // from class: org.telegram.ui.Components.TranslateAlert2.HeaderView.1
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(i, i2);
                    if (LocaleController.isRTL) {
                        HeaderView.this.titleTextView.setPivotX(getMeasuredWidth());
                    }
                }
            };
            this.titleTextView = textView;
            textView.setTextColor(TranslateAlert2.this.getThemedColor("dialogTextBlack"));
            this.titleTextView.setTextSize(1, 20.0f);
            this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.titleTextView.setText(LocaleController.getString("AutomaticTranslation", C3286R.string.AutomaticTranslation));
            this.titleTextView.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.titleTextView.setPivotY(BitmapDescriptorFactory.HUE_RED);
            addView(this.titleTextView, LayoutHelper.createFrame(-1, -2, 55, 22, 20, 22, 0));
            LinearLayout linearLayout = new LinearLayout(context, TranslateAlert2.this) { // from class: org.telegram.ui.Components.TranslateAlert2.HeaderView.2
                @Override // android.widget.LinearLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(i, i2);
                    if (LocaleController.isRTL) {
                        HeaderView.this.subtitleView.setPivotX(getMeasuredWidth());
                    }
                }
            };
            this.subtitleView = linearLayout;
            if (LocaleController.isRTL) {
                linearLayout.setGravity(5);
            }
            this.subtitleView.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.subtitleView.setPivotY(BitmapDescriptorFactory.HUE_RED);
            if (!TextUtils.isEmpty(TranslateAlert2.this.fromLanguage) && !"und".equals(TranslateAlert2.this.fromLanguage)) {
                TextView textView2 = new TextView(context);
                this.fromLanguageTextView = textView2;
                textView2.setLines(1);
                this.fromLanguageTextView.setTextColor(TranslateAlert2.this.getThemedColor("player_actionBarSubtitle"));
                this.fromLanguageTextView.setTextSize(1, 14.0f);
                this.fromLanguageTextView.setText(TranslateAlert2.capitalFirst(TranslateAlert2.languageName(TranslateAlert2.this.fromLanguage)));
                this.fromLanguageTextView.setPadding(0, AndroidUtilities.m50dp(2), 0, AndroidUtilities.m50dp(2));
            }
            ImageView imageView2 = new ImageView(context);
            this.arrowView = imageView2;
            imageView2.setImageResource(C3286R.C3288drawable.search_arrow);
            this.arrowView.setColorFilter(new PorterDuffColorFilter(TranslateAlert2.this.getThemedColor("player_actionBarSubtitle"), PorterDuff.Mode.MULTIPLY));
            if (LocaleController.isRTL) {
                this.arrowView.setScaleX(-1.0f);
            }
            AnimatedTextView animatedTextView = new AnimatedTextView(context, TranslateAlert2.this) { // from class: org.telegram.ui.Components.TranslateAlert2.HeaderView.3
                private Paint bgPaint = new Paint(1);
                private LinkSpanDrawable.LinkCollector links = new LinkSpanDrawable.LinkCollector();

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p048ui.Components.AnimatedTextView, android.view.View
                public void onDraw(Canvas canvas) {
                    if (LocaleController.isRTL) {
                        AndroidUtilities.rectTmp.set(getWidth() - width(), (getHeight() - AndroidUtilities.m50dp(18)) / 2.0f, getWidth(), (getHeight() + AndroidUtilities.m50dp(18)) / 2.0f);
                    } else {
                        AndroidUtilities.rectTmp.set(BitmapDescriptorFactory.HUE_RED, (getHeight() - AndroidUtilities.m50dp(18)) / 2.0f, width(), (getHeight() + AndroidUtilities.m50dp(18)) / 2.0f);
                    }
                    this.bgPaint.setColor(Theme.multAlpha(TranslateAlert2.this.getThemedColor("player_actionBarSubtitle"), 0.1175f));
                    canvas.drawRoundRect(AndroidUtilities.rectTmp, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4), this.bgPaint);
                    if (this.links.draw(canvas)) {
                        invalidate();
                    }
                    super.onDraw(canvas);
                }

                @Override // android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(null, ((BottomSheet) TranslateAlert2.this).resourcesProvider, motionEvent.getX(), motionEvent.getY());
                        linkSpanDrawable.setColor(Theme.multAlpha(TranslateAlert2.this.getThemedColor("player_actionBarSubtitle"), 0.1175f));
                        LinkPath obtainNewPath = linkSpanDrawable.obtainNewPath();
                        if (LocaleController.isRTL) {
                            AndroidUtilities.rectTmp.set(getWidth() - width(), (getHeight() - AndroidUtilities.m50dp(18)) / 2.0f, getWidth(), (getHeight() + AndroidUtilities.m50dp(18)) / 2.0f);
                        } else {
                            AndroidUtilities.rectTmp.set(BitmapDescriptorFactory.HUE_RED, (getHeight() - AndroidUtilities.m50dp(18)) / 2.0f, width(), (getHeight() + AndroidUtilities.m50dp(18)) / 2.0f);
                        }
                        obtainNewPath.addRect(AndroidUtilities.rectTmp, Path.Direction.CW);
                        this.links.addLink(linkSpanDrawable);
                        invalidate();
                        return true;
                    }
                    if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                        if (motionEvent.getAction() == 1) {
                            performClick();
                        }
                        this.links.clear();
                        invalidate();
                    }
                    return super.onTouchEvent(motionEvent);
                }
            };
            this.toLanguageTextView = animatedTextView;
            if (LocaleController.isRTL) {
                animatedTextView.setGravity(5);
            }
            this.toLanguageTextView.setAnimationProperties(0.25f, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.toLanguageTextView.setTextColor(TranslateAlert2.this.getThemedColor("player_actionBarSubtitle"));
            this.toLanguageTextView.setTextSize(AndroidUtilities.m50dp(14));
            this.toLanguageTextView.setText(TranslateAlert2.capitalFirst(TranslateAlert2.languageName(TranslateAlert2.this.toLanguage)));
            this.toLanguageTextView.setPadding(AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(2));
            this.toLanguageTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TranslateAlert2.HeaderView.this.lambda$new$1(view2);
                }
            });
            if (LocaleController.isRTL) {
                this.subtitleView.addView(this.toLanguageTextView, LayoutHelper.createLinear(-2, -2, 16, 0, 0, this.fromLanguageTextView != null ? 3 : 0, 0));
                if (this.fromLanguageTextView != null) {
                    this.subtitleView.addView(this.arrowView, LayoutHelper.createLinear(-2, -2, 16, 0, 1, 0, 0));
                    this.subtitleView.addView(this.fromLanguageTextView, LayoutHelper.createLinear(-2, -2, 16, 4, 0, 0, 0));
                }
            } else {
                TextView textView3 = this.fromLanguageTextView;
                if (textView3 != null) {
                    this.subtitleView.addView(textView3, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 4, 0));
                    this.subtitleView.addView(this.arrowView, LayoutHelper.createLinear(-2, -2, 16, 0, 1, 0, 0));
                }
                this.subtitleView.addView(this.toLanguageTextView, LayoutHelper.createLinear(-2, -2, 16, this.fromLanguageTextView != null ? 3 : 0, 0, 0, 0));
            }
            addView(this.subtitleView, LayoutHelper.createFrame(-1, -2, 55, 22, 43, 22, 0));
            View view2 = new View(context);
            this.shadow = view2;
            view2.setBackgroundColor(TranslateAlert2.this.getThemedColor("dialogShadowLine"));
            this.shadow.setAlpha(BitmapDescriptorFactory.HUE_RED);
            addView(this.shadow, LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight() / AndroidUtilities.dpf2(1.0f), 55, (float) BitmapDescriptorFactory.HUE_RED, 56.0f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            TranslateAlert2.this.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            openLanguagesSelect();
        }

        public void openLanguagesSelect() {
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this, getContext()) { // from class: org.telegram.ui.Components.TranslateAlert2.HeaderView.4
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow.ActionBarPopupWindowLayout, android.widget.FrameLayout, android.view.View
                public void onMeasure(int i, int i2) {
                    super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min((int) (AndroidUtilities.displaySize.y * 0.33f), View.MeasureSpec.getSize(i2)), 1073741824));
                }
            };
            Drawable mutate = ContextCompat.getDrawable(getContext(), C3286R.C3288drawable.popup_fixed_alert).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(TranslateAlert2.this.getThemedColor("actionBarDefaultSubmenuBackground"), PorterDuff.Mode.MULTIPLY));
            actionBarPopupWindowLayout.setBackground(mutate);
            final Runnable[] runnableArr = new Runnable[1];
            ArrayList<LocaleController.LocaleInfo> locales = TranslateController.getLocales();
            int i = 0;
            boolean z = true;
            while (i < locales.size()) {
                final LocaleController.LocaleInfo localeInfo = locales.get(i);
                if (!localeInfo.pluralLangCode.equals(TranslateAlert2.this.fromLanguage) && "remote".equals(localeInfo.pathToFile)) {
                    ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), 2, z, i == locales.size() - 1, ((BottomSheet) TranslateAlert2.this).resourcesProvider);
                    actionBarMenuSubItem.setText(TranslateAlert2.capitalFirst(TranslateAlert2.languageName(localeInfo.pluralLangCode)));
                    actionBarMenuSubItem.setChecked(TextUtils.equals(TranslateAlert2.this.toLanguage, localeInfo.pluralLangCode));
                    actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            TranslateAlert2.HeaderView.this.lambda$openLanguagesSelect$2(runnableArr, localeInfo, view);
                        }
                    });
                    actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
                    z = false;
                }
                i++;
            }
            final ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
            runnableArr[0] = new Runnable() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ActionBarPopupWindow.this.dismiss();
                }
            };
            actionBarPopupWindow.setPauseNotifications(true);
            actionBarPopupWindow.setDismissAnimationDuration(220);
            actionBarPopupWindow.setOutsideTouchable(true);
            actionBarPopupWindow.setClippingEnabled(true);
            actionBarPopupWindow.setAnimationStyle(C3286R.style.PopupContextAnimation);
            actionBarPopupWindow.setFocusable(true);
            int[] iArr = new int[2];
            this.toLanguageTextView.getLocationInWindow(iArr);
            actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.y, Integer.MIN_VALUE));
            int measuredHeight = actionBarPopupWindowLayout.getMeasuredHeight();
            actionBarPopupWindow.showAtLocation(((BottomSheet) TranslateAlert2.this).containerView, 51, iArr[0] - AndroidUtilities.m50dp(8), ((float) iArr[1]) > (((float) AndroidUtilities.displaySize.y) * 0.9f) - ((float) measuredHeight) ? (iArr[1] - measuredHeight) + AndroidUtilities.m50dp(8) : (iArr[1] + this.toLanguageTextView.getMeasuredHeight()) - AndroidUtilities.m50dp(8));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openLanguagesSelect$2(Runnable[] runnableArr, LocaleController.LocaleInfo localeInfo, View view) {
            if (runnableArr[0] != null) {
                runnableArr[0].run();
            }
            if (TextUtils.equals(TranslateAlert2.this.toLanguage, localeInfo.pluralLangCode)) {
                return;
            }
            if (TranslateAlert2.this.adapter.mMainView == TranslateAlert2.this.textViewContainer) {
                TranslateAlert2 translateAlert2 = TranslateAlert2.this;
                translateAlert2.prevToLanguage = translateAlert2.toLanguage;
            }
            this.toLanguageTextView.setText(TranslateAlert2.capitalFirst(TranslateAlert2.languageName(TranslateAlert2.this.toLanguage = localeInfo.pluralLangCode)));
            TranslateAlert2.this.adapter.updateMainView(TranslateAlert2.this.loadingTextView);
            TranslateAlert2.setToLanguage(TranslateAlert2.this.toLanguage);
            TranslateAlert2.this.translate();
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            float clamp = MathUtils.clamp((f - AndroidUtilities.statusBarHeight) / AndroidUtilities.m50dp(64), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            if (!TranslateAlert2.this.hasEnoughHeight()) {
                clamp = 1.0f;
            }
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(clamp);
            this.titleTextView.setScaleX(AndroidUtilities.lerp(0.85f, 1.0f, interpolation));
            this.titleTextView.setScaleY(AndroidUtilities.lerp(0.85f, 1.0f, interpolation));
            this.titleTextView.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dpf2(-12.0f), (float) BitmapDescriptorFactory.HUE_RED, interpolation));
            if (!LocaleController.isRTL) {
                this.titleTextView.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dpf2(50.0f), (float) BitmapDescriptorFactory.HUE_RED, interpolation));
                this.subtitleView.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dpf2(50.0f), (float) BitmapDescriptorFactory.HUE_RED, interpolation));
            }
            this.subtitleView.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dpf2(-22.0f), (float) BitmapDescriptorFactory.HUE_RED, interpolation));
            this.backButton.setTranslationX(AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(-25.0f), interpolation));
            float f2 = 1.0f - interpolation;
            this.backButton.setAlpha(f2);
            this.shadow.setTranslationY(AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(22.0f), interpolation));
            this.shadow.setAlpha(f2);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(78), 1073741824));
        }
    }

    /* renamed from: org.telegram.ui.Components.TranslateAlert2$ContainerView */
    /* loaded from: classes6.dex */
    private class ContainerView extends FrameLayout {
        private Paint bgPaint;
        private Path bgPath;
        private Boolean lightStatusBarFull;

        public ContainerView(Context context) {
            super(context);
            this.bgPath = new Path();
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            paint.setColor(TranslateAlert2.this.getThemedColor("dialogBackground"));
            Theme.applyDefaultShadow(this.bgPaint);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            float sheetTop = TranslateAlert2.this.getSheetTop();
            float lerp = AndroidUtilities.lerp(0, AndroidUtilities.m50dp(12), MathUtils.clamp(sheetTop / AndroidUtilities.dpf2(24.0f), (float) BitmapDescriptorFactory.HUE_RED, 1.0f));
            TranslateAlert2.this.headerView.setTranslationY(Math.max(AndroidUtilities.statusBarHeight, sheetTop));
            updateLightStatusBar(sheetTop <= ((float) AndroidUtilities.statusBarHeight) / 2.0f);
            this.bgPath.rewind();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(BitmapDescriptorFactory.HUE_RED, sheetTop, getWidth(), getHeight() + lerp);
            this.bgPath.addRoundRect(rectF, lerp, lerp, Path.Direction.CW);
            canvas.drawPath(this.bgPath, this.bgPaint);
            super.dispatchDraw(canvas);
        }

        private void updateLightStatusBar(boolean z) {
            int blendOver;
            Boolean bool = this.lightStatusBarFull;
            if (bool == null || bool.booleanValue() != z) {
                this.lightStatusBarFull = Boolean.valueOf(z);
                Window window = TranslateAlert2.this.getWindow();
                if (z) {
                    blendOver = TranslateAlert2.this.getThemedColor("dialogBackground");
                } else {
                    blendOver = Theme.blendOver(TranslateAlert2.this.getThemedColor("actionBarDefault"), AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                }
                AndroidUtilities.setLightStatusBar(window, AndroidUtilities.computePerceivedBrightness(blendOver) > 0.721f);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            Bulletin.addDelegate(this, new Bulletin.Delegate(this) { // from class: org.telegram.ui.Components.TranslateAlert2.ContainerView.1
                @Override // org.telegram.p048ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.p048ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
                }

                @Override // org.telegram.p048ui.Components.Bulletin.Delegate
                public /* synthetic */ void onBottomOffsetChange(float f) {
                    Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                }

                @Override // org.telegram.p048ui.Components.Bulletin.Delegate
                public /* synthetic */ void onHide(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                }

                @Override // org.telegram.p048ui.Components.Bulletin.Delegate
                public /* synthetic */ void onShow(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                }

                @Override // org.telegram.p048ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i) {
                    return AndroidUtilities.m50dp(80);
                }
            });
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            Bulletin.removeDelegate(this);
        }
    }

    public static String capitalFirst(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    public static CharSequence capitalFirst(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() <= 0) {
            return null;
        }
        SpannableStringBuilder valueOf = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : SpannableStringBuilder.valueOf(charSequence);
        valueOf.replace(0, 1, (CharSequence) valueOf.toString().substring(0, 1).toUpperCase());
        return valueOf;
    }

    public static String languageName(String str) {
        return languageName(str, null);
    }

    public static String languageName(String str, boolean[] zArr) {
        if (str == null || str.equals("und") || str.equals(TtmlNode.TEXT_EMPHASIS_AUTO)) {
            return null;
        }
        boolean z = false;
        String str2 = str.split("_")[0];
        if ("nb".equals(str2)) {
            str2 = "no";
        }
        if (zArr != null) {
            String string = LocaleController.getString("TranslateLanguage" + str2.toUpperCase());
            boolean z2 = (string == null || string.startsWith("LOC_ERR")) ? false : true;
            zArr[0] = z2;
            if (z2) {
                return string;
            }
        }
        String systemLanguageName = systemLanguageName(str);
        if (systemLanguageName == null) {
            systemLanguageName = systemLanguageName(str2);
        }
        if (systemLanguageName != null) {
            return systemLanguageName;
        }
        if ("no".equals(str)) {
            str = "nb";
        }
        LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
        LocaleController.LocaleInfo builtinLanguageByPlural = LocaleController.getInstance().getBuiltinLanguageByPlural(str);
        if (builtinLanguageByPlural == null) {
            return null;
        }
        if (currentLocaleInfo != null && "en".equals(currentLocaleInfo.pluralLangCode)) {
            z = true;
        }
        if (z) {
            return builtinLanguageByPlural.nameEnglish;
        }
        return builtinLanguageByPlural.name;
    }

    public static String systemLanguageName(String str) {
        return systemLanguageName(str, false);
    }

    public static String systemLanguageName(String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (localesByCode == null) {
            localesByCode = new HashMap<>();
            try {
                Locale[] availableLocales = Locale.getAvailableLocales();
                for (int i = 0; i < availableLocales.length; i++) {
                    localesByCode.put(availableLocales[i].getLanguage(), availableLocales[i]);
                    String country = availableLocales[i].getCountry();
                    if (country != null && country.length() > 0) {
                        HashMap<String, Locale> hashMap = localesByCode;
                        hashMap.put(availableLocales[i].getLanguage() + "-" + country.toLowerCase(), availableLocales[i]);
                    }
                }
            } catch (Exception unused) {
            }
        }
        String lowerCase = str.replace("_", "-").toLowerCase();
        try {
            Locale locale = localesByCode.get(lowerCase);
            if (locale != null) {
                String displayLanguage = locale.getDisplayLanguage(z ? locale : Locale.getDefault());
                if (lowerCase.contains("-")) {
                    String displayCountry = locale.getDisplayCountry(z ? locale : Locale.getDefault());
                    if (TextUtils.isEmpty(displayCountry)) {
                        return displayLanguage;
                    }
                    return displayLanguage + " (" + displayCountry + ")";
                }
                return displayLanguage;
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            this.loadingTextView.invalidate();
            this.textView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtonShadow(boolean z) {
        Boolean bool = this.buttonShadowShown;
        if (bool == null || bool.booleanValue() != z) {
            this.buttonShadowShown = Boolean.valueOf(z);
            this.buttonShadowView.animate().cancel();
            this.buttonShadowView.animate().alpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).start();
        }
    }

    public static TranslateAlert2 showAlert(Context context, BaseFragment baseFragment, int i, String str, String str2, CharSequence charSequence, ArrayList<TLRPC$MessageEntity> arrayList, boolean z, Utilities.CallbackReturn<URLSpan, Boolean> callbackReturn, final Runnable runnable) {
        TranslateAlert2 translateAlert2 = new TranslateAlert2(context, str, str2, charSequence, arrayList, null) { // from class: org.telegram.ui.Components.TranslateAlert2.7
            @Override // org.telegram.p048ui.Components.TranslateAlert2, org.telegram.p048ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
            public void dismiss() {
                super.dismiss();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        translateAlert2.setNoforwards(z);
        translateAlert2.setFragment(baseFragment);
        translateAlert2.setOnLinkPress(callbackReturn);
        if (baseFragment != null) {
            if (baseFragment.getParentActivity() != null) {
                baseFragment.showDialog(translateAlert2);
            }
        } else {
            translateAlert2.show();
        }
        return translateAlert2;
    }

    public static String getToLanguage() {
        return MessagesController.getGlobalMainSettings().getString("translate_to_language", LocaleController.getInstance().getCurrentLocale().getLanguage());
    }

    public static void setToLanguage(String str) {
        MessagesController.getGlobalMainSettings().edit().putString("translate_to_language", str).apply();
    }
}
