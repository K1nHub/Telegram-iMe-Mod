package com.iMe.fork.p024ui.dialog;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Layout;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.enums.TranslationDialogType;
import com.iMe.fork.p024ui.dialog.TranslateAlert;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.translation.TranslationArgs;
import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.p031ui.base.mvp.JavaMvpBottomSheet;
import com.iMe.p031ui.translate.TranslationPresenter;
import com.iMe.p031ui.translate.TranslationView;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.XiaomiUtilities;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.BulletinFactory;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.EditTextBoldCursor;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.LinkPath;
import org.telegram.p044ui.Components.LinkSpanDrawable;
import org.telegram.tgnet.TLRPC$InputPeer;
/* renamed from: com.iMe.fork.ui.dialog.TranslateAlert */
/* loaded from: classes3.dex */
public class TranslateAlert extends JavaMvpBottomSheet implements TranslationView {
    private static final int MOST_SPEC;
    private Spannable allTexts;
    private TextView allTextsView;
    private boolean allowScroll;
    private ImageView backButton;
    protected ColorDrawable backDrawable;
    private Rect backRect;
    private int blockIndex;
    private FrameLayout bulletinContainer;
    private final ImageView buttonImageView;
    private LinearLayout buttonLinear;
    private Rect buttonRect;
    private FrameLayout buttonShadowView;
    private TextView buttonTextView;
    private FrameLayout buttonView;
    private ImageView changeLanguageButton;
    private FrameLayout.LayoutParams changeLanguageViewLayout;
    private FrameLayout container;
    private float containerOpenAnimationT;
    private Rect containerRect;
    private FrameLayout contentView;
    private boolean dismissed;
    private EditTextBoldCursor editText;
    private boolean fastHide;
    private int firstMinHeight;
    private BaseFragment fragment;
    private boolean fromScrollRect;
    private float fromScrollViewY;
    private float fromScrollY;
    private float fromY;
    private FrameLayout header;
    private FrameLayout.LayoutParams headerLayout;
    private FrameLayout headerShadowView;
    private float heightMaxPercent;
    private Boolean isTranslateText;
    private boolean isTranslated;
    private LinkSpanDrawable.LinkCollector links;
    private boolean maybeScrolling;
    private boolean noforwards;
    private Runnable onDismiss;
    private ValueAnimator openAnimationToAnimator;
    private boolean openAnimationToAnimatorPriority;
    private ValueAnimator openingAnimator;
    private boolean openingAnimatorPriority;
    private float openingT;
    private LinkSpanDrawable pressedLink;
    private boolean pressedOutside;
    private Rect scrollRect;
    private NestedScrollView scrollView;
    private FrameLayout.LayoutParams scrollViewLayout;
    private boolean scrolling;
    private ImageView settingsButton;
    private FrameLayout.LayoutParams settingsViewLayout;
    private boolean shouldShowKeyboard;
    private ImageView subtitleArrowView;
    private InlineLoadingTextView subtitleFromView;
    private FrameLayout.LayoutParams subtitleLayout;
    private TextView subtitleToView;
    private LinearLayout subtitleView;
    private ArrayList<CharSequence> textBlocks;
    private Rect textRect;
    private FrameLayout textsContainerView;
    private TextBlocksLayout textsView;
    private FrameLayout.LayoutParams titleLayout;
    private TextView titleView;
    private String translateText;
    private final TranslationArgs translationArgs;
    @InjectPresenter
    public TranslationPresenter translationPresenter;
    private final TranslatorActionsDelegate translatorActionsDelegate;

    /* renamed from: com.iMe.fork.ui.dialog.TranslateAlert$OnLinkPress */
    /* loaded from: classes3.dex */
    public interface OnLinkPress {
    }

    /* renamed from: com.iMe.fork.ui.dialog.TranslateAlert$TranslatorActionsDelegate */
    /* loaded from: classes3.dex */
    public interface TranslatorActionsDelegate {

        /* renamed from: com.iMe.fork.ui.dialog.TranslateAlert$TranslatorActionsDelegate$-CC */
        /* loaded from: classes3.dex */
        public final /* synthetic */ class CC {
            public static boolean $default$hasReplyingMessage(TranslatorActionsDelegate translatorActionsDelegate) {
                return false;
            }

            public static void $default$pasteResult(TranslatorActionsDelegate translatorActionsDelegate, String str) {
            }

            public static void $default$replyMessage(TranslatorActionsDelegate translatorActionsDelegate, String str) {
            }
        }

        boolean hasReplyingMessage();

        void openSettings();

        void pasteResult(String str);

        void replyMessage(String str);
    }

    public /* synthetic */ ParametersHolder lambda$provideTranslationPresenter$0() {
        return ParametersHolderKt.parametersOf(this.translationArgs);
    }

    @ProvidePresenter
    public TranslationPresenter provideTranslationPresenter() {
        return (TranslationPresenter) KoinJavaComponent.get(TranslationPresenter.class, null, new Function0() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ParametersHolder lambda$provideTranslationPresenter$0;
                lambda$provideTranslationPresenter$0 = TranslateAlert.this.lambda$provideTranslationPresenter$0();
                return lambda$provideTranslationPresenter$0;
            }
        });
    }

    public TranslateAlert(BaseFragment baseFragment, boolean z, TranslationArgs translationArgs, TranslatorActionsDelegate translatorActionsDelegate) {
        this(baseFragment, baseFragment.getContext(), -1, null, -1, "", "", "", z, null, null, translationArgs, translatorActionsDelegate);
    }

    public static TranslateAlert createInstanceForForkTranslation(BaseFragment baseFragment, TranslationArgs translationArgs, TranslatorActionsDelegate translatorActionsDelegate, boolean z) {
        return new TranslateAlert(baseFragment, z, translationArgs, translatorActionsDelegate);
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

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        return this.contentView;
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void configureScreenWith(String str, String str2) {
        if (this.translationArgs.getType() == TranslationDialogType.REPLY) {
            this.subtitleFromView.loaded(str);
            this.buttonTextView.setText(LocaleController.formatStringInternal(C3290R.string.translation_dialog_translate_to, str2));
            this.buttonImageView.setVisibility(8);
        } else {
            this.subtitleFromView.setFromLanguageText(str);
        }
        this.subtitleToView.setText(str2);
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void showTranslation(String str, String str2, String str3) {
        if (this.translationArgs.getType() == TranslationDialogType.REPLY) {
            showLoadingDialog(false, true, null);
            this.isTranslated = true;
            this.editText.setText(str);
            this.editText.setSelection(str.length());
            this.buttonTextView.setText(LocaleController.getString("Send", C3290R.string.Send));
            return;
        }
        this.subtitleToView.setText(str3);
        this.subtitleFromView.loaded(str2);
        this.textsView.getBlockAt(0).loaded(str, null);
        this.textsView.setWholeText(str);
        this.allTextsView.requestFocus();
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void showSubtitleLanguage(String str, String str2) {
        this.subtitleToView.setText(str2);
        this.subtitleFromView.loaded(str);
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void showLanguages(List<TranslationLanguageUiModel> list, String str) {
        showDialog(new SelectLanguageBottomSheet(getContext(), list, str, new Callbacks$Callback1() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda13
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                TranslateAlert.this.lambda$showLanguages$1((String) obj);
            }
        }));
    }

    public /* synthetic */ void lambda$showLanguages$1(String str) {
        this.translationPresenter.selectLanguage(str);
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void onLoadingState(String str, boolean z) {
        if (this.translationArgs.getType() == TranslationDialogType.REPLY) {
            showLoadingDialog(true, true, null);
            return;
        }
        LoadingTextView2 blockAt = this.textsView.getBlockAt(0);
        if (blockAt != null) {
            this.textsView.removeView(blockAt);
        }
        ArrayList<CharSequence> arrayList = new ArrayList<>();
        this.textBlocks = arrayList;
        arrayList.add(str);
        this.blockIndex++;
        this.textsView.addBlock(str);
        openAnimationTo(4.656613E-10f, true);
    }

    @Override // com.iMe.p031ui.base.mvp.AppUpdateRequiredView
    public void showAppUpdateDialog() {
        BaseFragment baseFragment = this.fragment;
        baseFragment.showDialog(DialogsFactoryKt.createUpdateAppDialog(baseFragment));
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void openReplyDialog(DialogTranslationSettings dialogTranslationSettings) {
        TranslateAlert translateAlert = new TranslateAlert(this.fragment, this.noforwards, new TranslationArgs(TranslationDialogType.REPLY, "", dialogTranslationSettings), this.translatorActionsDelegate);
        BaseFragment baseFragment = this.fragment;
        if (baseFragment != null) {
            if (baseFragment.getParentActivity() != null) {
                this.fragment.showDialog(translateAlert);
                return;
            }
            return;
        }
        translateAlert.show();
    }

    private void initEditText() {
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(getContext());
        this.editText = editTextBoldCursor;
        editTextBoldCursor.setBackground(null);
        this.editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        EditTextBoldCursor editTextBoldCursor2 = this.editText;
        int i = Theme.key_windowBackgroundWhiteHintText;
        editTextBoldCursor2.setHintColor(Theme.getColor(i));
        this.editText.setHintTextColor(Theme.getColor(i));
        this.editText.setHintText(LocaleController.getString("Message", C3290R.string.Message));
        this.editText.setTextSize(1, 16.0f);
        this.editText.setLines(1);
        this.editText.setMaxLines(3);
        this.editText.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.editText.setPadding(0, 0, 0, 0);
        this.textsContainerView.addView(this.editText, LayoutHelper.createFrame(-1, -2, 17, 22, 12, 22, 12));
    }

    private void initButtonsByType() {
        initSettingsButton();
        TranslationDialogType type = this.translationArgs.getType();
        if (type == TranslationDialogType.OUTGOING) {
            initOutgoingButtons();
        } else if (type == TranslationDialogType.INCOMING) {
            initChangeLanguageButton();
            if (this.translationArgs.getTranslationSettings() == null || !this.translatorActionsDelegate.hasReplyingMessage()) {
                return;
            }
            long dialogId = this.translationArgs.getTranslationSettings().getDialogId();
            if (!DialogObject.isChatDialog(dialogId) || (DialogObject.isChatDialog(dialogId) && ChatObject.canSendMessages(this.fragment.getMessagesController().getChat(Long.valueOf(-dialogId))))) {
                this.buttonTextView.setText(LocaleController.getString("Reply", C3290R.string.Reply));
                this.buttonImageView.setImageResource(C3290R.C3292drawable.msg_reply);
                this.buttonLinear.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TranslateAlert.this.lambda$initButtonsByType$2(view);
                    }
                });
            }
        } else if (type == TranslationDialogType.REPLY) {
            this.buttonView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TranslateAlert.this.lambda$initButtonsByType$3(view);
                }
            });
        }
    }

    public /* synthetic */ void lambda$initButtonsByType$2(View view) {
        this.translationPresenter.prepareReplyDialog();
    }

    public /* synthetic */ void lambda$initButtonsByType$3(View view) {
        if (this.isTranslated) {
            dismiss();
            this.translatorActionsDelegate.replyMessage(this.editText.getText().toString());
            return;
        }
        this.translationPresenter.translate(this.editText.getText().toString(), false);
    }

    private void initSettingsButton() {
        ImageView imageView = new ImageView(getContext());
        this.settingsButton = imageView;
        imageView.setImageResource(C3290R.C3292drawable.notifications_settings);
        this.settingsButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.settingsButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector)));
        this.settingsButton.setVisibility(this.translatorActionsDelegate != null ? 0 : 8);
        this.settingsButton.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TranslateAlert.this.lambda$initSettingsButton$4(view);
            }
        });
        ViewExtKt.setImageColor(this.settingsButton, Theme.getColor(Theme.key_dialogTextBlack));
        ViewExtKt.setHorizontalPadding(this.settingsButton, 16);
        FrameLayout frameLayout = this.header;
        ImageView imageView2 = this.settingsButton;
        FrameLayout.LayoutParams createFrame = LayoutHelper.createFrame(56, 56, 5, 0, 16, 0, 0);
        this.settingsViewLayout = createFrame;
        frameLayout.addView(imageView2, createFrame);
        if (this.translationArgs.getTranslationSettings() == null) {
            this.settingsButton.setVisibility(8);
        }
    }

    public /* synthetic */ void lambda$initSettingsButton$4(View view) {
        TranslatorActionsDelegate translatorActionsDelegate = this.translatorActionsDelegate;
        if (translatorActionsDelegate != null) {
            translatorActionsDelegate.openSettings();
        }
        dismiss();
    }

    private void initChangeLanguageButton() {
        ImageView imageView = new ImageView(getContext());
        this.changeLanguageButton = imageView;
        imageView.setImageResource(C3290R.C3292drawable.msg_retry);
        this.changeLanguageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.changeLanguageButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector)));
        this.changeLanguageButton.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TranslateAlert.this.lambda$initChangeLanguageButton$5(view);
            }
        });
        ViewExtKt.setImageColor(this.changeLanguageButton, Theme.getColor(Theme.key_dialogTextBlack));
        ViewExtKt.setHorizontalPadding(this.changeLanguageButton, 16);
        int i = this.translationArgs.getTranslationSettings() != null ? 56 : 0;
        FrameLayout frameLayout = this.header;
        ImageView imageView2 = this.changeLanguageButton;
        FrameLayout.LayoutParams createFrame = LayoutHelper.createFrame(56, 56, 5, 0, 16, i, 0);
        this.changeLanguageViewLayout = createFrame;
        frameLayout.addView(imageView2, createFrame);
    }

    public /* synthetic */ void lambda$initChangeLanguageButton$5(View view) {
        if (this.translateText.isEmpty()) {
            if (this.textsView.getBlockAt(0) == null) {
                return;
            }
            this.translateText = this.textsView.getBlockAt(0).toTextView.getText().toString();
            this.isTranslateText = Boolean.TRUE;
            this.translationPresenter.replaceLanguage(true, this.translationArgs.getTextToTranslate());
            return;
        }
        String textToTranslate = this.isTranslateText.booleanValue() ? this.translateText : this.translationArgs.getTextToTranslate();
        Boolean valueOf = Boolean.valueOf(true ^ this.isTranslateText.booleanValue());
        this.isTranslateText = valueOf;
        this.translationPresenter.replaceLanguage(valueOf.booleanValue(), textToTranslate);
    }

    private void initContainerButton() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setLayoutParams(LayoutHelper.createLinear(-1, 48));
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(C3290R.C3292drawable.msg_copy);
        TextView textView = new TextView(getContext());
        textView.setLines(1);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(16);
        textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 14.0f);
        textView.setText(LocaleController.getString("Copy", C3290R.string.Copy));
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        linearLayout2.setGravity(17);
        linearLayout2.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor(Theme.key_featuredStickers_addButton), 4.0f));
        linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 18, 0));
        linearLayout2.addView(textView);
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TranslateAlert.this.lambda$initContainerButton$6(view);
            }
        });
        linearLayout.addView(this.buttonLinear, LayoutHelper.createLinear(-1, 48, 1.0f, 5, 0, 0, 8, 0));
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, 48, 1.0f, 3, 8, 0, 0, 0));
        this.container.addView(linearLayout, LayoutHelper.createFrame(-1, 48, 80, 16, 0, 16, 16));
        this.contentView.addView(this.container, LayoutHelper.createFrame(-1, -2, 81));
    }

    public /* synthetic */ void lambda$initContainerButton$6(View view) {
        Toast.makeText(getContext(), LocaleController.getString("TextCopied", C3290R.string.TextCopied), 0).show();
        AndroidUtilities.addToClipboard(this.allTextsView.getText());
        dismiss();
    }

    private void initOutgoingButtons() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.addView(createOutgoingButton(C3290R.C3292drawable.msg_language, LocaleController.getString("Language", C3290R.string.Language), new Callbacks$Callback() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda14
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TranslateAlert.this.lambda$initOutgoingButtons$7();
            }
        }), LayoutHelper.createLinear(0, -1, 1.0f));
        linearLayout.addView(createOutgoingButton(C3290R.C3292drawable.msg_send, LocaleController.getString("Send", C3290R.string.Send), new Callbacks$Callback() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda15
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TranslateAlert.this.lambda$initOutgoingButtons$8();
            }
        }), LayoutHelper.createLinear(0, -1, 1.0f, 16, 0, 0, 0));
        this.container.removeView(this.buttonView);
        this.container.addView(linearLayout, LayoutHelper.createFrame(-1, 48, 80, 16, 16, 16, 16));
    }

    public /* synthetic */ void lambda$initOutgoingButtons$7() {
        this.translationPresenter.loadLanguages(false);
    }

    public /* synthetic */ void lambda$initOutgoingButtons$8() {
        dismiss();
        this.translatorActionsDelegate.pasteResult(this.textsView.getBlockAt(0).toTextView.getText().toString());
    }

    private FrameLayout createOutgoingButton(int i, String str, final Callbacks$Callback callbacks$Callback) {
        TextView textView = new TextView(getContext());
        ViewExtKt.singleLine(textView);
        ViewExtKt.withMediumTypeface(textView);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(17);
        textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        textView.setTextSize(1, 14.0f);
        textView.setText(str);
        textView.setCompoundDrawablesWithIntrinsicBounds(ContextCompat.getDrawable(getContext(), i), (Drawable) null, (Drawable) null, (Drawable) null);
        textView.setCompoundDrawablePadding(getContext().getResources().getDimensionPixelOffset(C3290R.dimen.margin_half_small));
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor(Theme.key_featuredStickers_addButton), 4.0f));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 17));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callbacks$Callback.this.invoke();
            }
        });
        return frameLayout;
    }

    static {
        new DispatchQueue("translateQueue", false);
        MOST_SPEC = View.MeasureSpec.makeMeasureSpec(999999, Integer.MIN_VALUE);
    }

    public void openAnimation(float f) {
        float min = Math.min(Math.max(f, (float) BitmapDescriptorFactory.HUE_RED), 1.0f);
        if (this.containerOpenAnimationT == min) {
            return;
        }
        this.containerOpenAnimationT = min;
        if (this.settingsButton != null) {
            FrameLayout.LayoutParams layoutParams = this.settingsViewLayout;
            int i = layoutParams.leftMargin;
            int m54dp = AndroidUtilities.m54dp(AndroidUtilities.lerp(16, 0, min));
            FrameLayout.LayoutParams layoutParams2 = this.settingsViewLayout;
            layoutParams.setMargins(i, m54dp, layoutParams2.rightMargin, layoutParams2.bottomMargin);
            this.settingsButton.setLayoutParams(this.settingsViewLayout);
        }
        if (this.changeLanguageButton != null) {
            FrameLayout.LayoutParams layoutParams3 = this.changeLanguageViewLayout;
            int i2 = this.settingsViewLayout.leftMargin;
            int m54dp2 = AndroidUtilities.m54dp(AndroidUtilities.lerp(16, 0, min));
            FrameLayout.LayoutParams layoutParams4 = this.changeLanguageViewLayout;
            layoutParams3.setMargins(i2, m54dp2, layoutParams4.rightMargin, layoutParams4.bottomMargin);
            this.changeLanguageButton.setLayoutParams(this.changeLanguageViewLayout);
        }
        this.titleView.setScaleX(AndroidUtilities.lerp(1.0f, 0.9473f, min));
        this.titleView.setScaleY(AndroidUtilities.lerp(1.0f, 0.9473f, min));
        FrameLayout.LayoutParams layoutParams5 = this.titleLayout;
        int m54dp3 = AndroidUtilities.m54dp(AndroidUtilities.lerp(22, 72, min));
        int m54dp4 = AndroidUtilities.m54dp(AndroidUtilities.lerp(22, 8, min));
        FrameLayout.LayoutParams layoutParams6 = this.titleLayout;
        layoutParams5.setMargins(m54dp3, m54dp4, layoutParams6.rightMargin, layoutParams6.bottomMargin);
        this.titleView.setLayoutParams(this.titleLayout);
        FrameLayout.LayoutParams layoutParams7 = this.subtitleLayout;
        int m54dp5 = AndroidUtilities.m54dp(AndroidUtilities.lerp(22, 72, min)) - LoadingTextView2.paddingHorizontal;
        int m54dp6 = AndroidUtilities.m54dp(AndroidUtilities.lerp(47, 30, min)) - LoadingTextView2.paddingVertical;
        FrameLayout.LayoutParams layoutParams8 = this.subtitleLayout;
        layoutParams7.setMargins(m54dp5, m54dp6, layoutParams8.rightMargin, layoutParams8.bottomMargin);
        this.subtitleView.setLayoutParams(this.subtitleLayout);
        this.backButton.setAlpha(min);
        float f2 = (0.25f * min) + 0.75f;
        this.backButton.setScaleX(f2);
        this.backButton.setScaleY(f2);
        this.backButton.setClickable(min > 0.5f);
        this.headerShadowView.setAlpha(this.scrollView.getScrollY() <= 0 ? min : 1.0f);
        this.headerLayout.height = AndroidUtilities.lerp(AndroidUtilities.m54dp(70), AndroidUtilities.m54dp(56), min);
        this.header.setLayoutParams(this.headerLayout);
        FrameLayout.LayoutParams layoutParams9 = this.scrollViewLayout;
        int i3 = layoutParams9.leftMargin;
        int lerp = AndroidUtilities.lerp(AndroidUtilities.m54dp(70), AndroidUtilities.m54dp(56), min);
        FrameLayout.LayoutParams layoutParams10 = this.scrollViewLayout;
        layoutParams9.setMargins(i3, lerp, layoutParams10.rightMargin, layoutParams10.bottomMargin);
        this.scrollView.setLayoutParams(this.scrollViewLayout);
    }

    public void openAnimationTo(float f, boolean z) {
        openAnimationTo(f, z, null);
    }

    private void openAnimationTo(float f, boolean z, final Runnable runnable) {
        if (!this.openAnimationToAnimatorPriority || z) {
            this.openAnimationToAnimatorPriority = z;
            float min = Math.min(Math.max(f, (float) BitmapDescriptorFactory.HUE_RED), 1.0f);
            ValueAnimator valueAnimator = this.openAnimationToAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.containerOpenAnimationT, min);
            this.openAnimationToAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TranslateAlert.this.lambda$openAnimationTo$10(valueAnimator2);
                }
            });
            this.openAnimationToAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.iMe.fork.ui.dialog.TranslateAlert.1
                {
                    TranslateAlert.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TranslateAlert.this.openAnimationToAnimatorPriority = false;
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    TranslateAlert.this.openAnimationToAnimatorPriority = false;
                }
            });
            this.openAnimationToAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            this.openAnimationToAnimator.setDuration(220L);
            this.openAnimationToAnimator.start();
        }
    }

    public /* synthetic */ void lambda$openAnimationTo$10(ValueAnimator valueAnimator) {
        openAnimation(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public int minHeight() {
        return minHeight(false);
    }

    private int minHeight(boolean z) {
        FrameLayout frameLayout;
        TextBlocksLayout textBlocksLayout = this.textsView;
        int measuredHeight = textBlocksLayout == null ? 0 : textBlocksLayout.getMeasuredHeight();
        int i = AndroidUtilities.statusBarHeight;
        if (this.editText != null && (frameLayout = this.textsContainerView) != null) {
            measuredHeight = frameLayout.getMeasuredHeight();
        }
        int i2 = i + measuredHeight;
        int m54dp = AndroidUtilities.m54dp(147) + i2;
        if (this.firstMinHeight < 0 && i2 > 0) {
            this.firstMinHeight = m54dp;
        }
        return (this.firstMinHeight <= 0 || this.textBlocks.size() <= 1 || z) ? m54dp : this.firstMinHeight;
    }

    public boolean canExpand() {
        return this.textsView.getBlocksCount() < this.textBlocks.size() || ((float) minHeight(true)) >= ((float) AndroidUtilities.displayMetrics.heightPixels) * this.heightMaxPercent;
    }

    public void updateCanExpand() {
        boolean canExpand = canExpand();
        float f = this.containerOpenAnimationT;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (f > BitmapDescriptorFactory.HUE_RED && !canExpand) {
            openAnimationTo(BitmapDescriptorFactory.HUE_RED, false);
        }
        ViewPropertyAnimator alpha = this.buttonShadowView.animate().alpha(canExpand ? 1.0f : 0.0f);
        float alpha2 = this.buttonShadowView.getAlpha();
        if (canExpand) {
            f2 = 1.0f;
        }
        alpha.setDuration(Math.abs(alpha2 - f2) * 220.0f).start();
    }

    public TranslateAlert(BaseFragment baseFragment, Context context, int i, TLRPC$InputPeer tLRPC$InputPeer, int i2, String str, String str2, CharSequence charSequence, boolean z, OnLinkPress onLinkPress, Runnable runnable, TranslationArgs translationArgs, TranslatorActionsDelegate translatorActionsDelegate) {
        super(context, C3290R.style.TransparentDialog);
        int i3;
        this.editText = null;
        this.translateText = "";
        this.isTranslated = false;
        this.blockIndex = 0;
        this.containerOpenAnimationT = BitmapDescriptorFactory.HUE_RED;
        this.openAnimationToAnimatorPriority = false;
        this.openAnimationToAnimator = null;
        this.firstMinHeight = -1;
        this.allowScroll = true;
        this.fromScrollY = BitmapDescriptorFactory.HUE_RED;
        this.containerRect = new Rect();
        this.textRect = new Rect();
        new Rect();
        this.buttonRect = new Rect();
        this.backRect = new Rect();
        this.scrollRect = new Rect();
        this.fromY = BitmapDescriptorFactory.HUE_RED;
        this.pressedOutside = false;
        this.maybeScrolling = false;
        this.scrolling = false;
        this.fromScrollRect = false;
        this.fromScrollViewY = BitmapDescriptorFactory.HUE_RED;
        this.allTexts = null;
        this.openingT = BitmapDescriptorFactory.HUE_RED;
        this.backDrawable = new ColorDrawable(-16777216) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.6
            {
                TranslateAlert.this = this;
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void setAlpha(int i4) {
                super.setAlpha(i4);
                TranslateAlert.this.container.invalidate();
            }
        };
        this.dismissed = false;
        this.heightMaxPercent = 0.85f;
        this.fastHide = false;
        this.openingAnimatorPriority = false;
        this.translatorActionsDelegate = translatorActionsDelegate;
        this.translationArgs = translationArgs;
        boolean z2 = translationArgs != null && translationArgs.getType() == TranslationDialogType.REPLY;
        this.shouldShowKeyboard = z2;
        if (z2) {
            setApplyTopPadding(false);
        } else {
            setBackgroundColor(0);
        }
        setApplyBottomPadding(false);
        setCanDismissWithSwipe(false);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        this.noforwards = z;
        this.fragment = baseFragment;
        if (str != null) {
            str.equals("und");
        }
        ArrayList<CharSequence> arrayList = new ArrayList<>();
        this.textBlocks = arrayList;
        arrayList.add(charSequence);
        this.onDismiss = runnable;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 30) {
            getWindow().addFlags(-2147483392);
        } else if (i4 >= 21) {
            getWindow().addFlags(-2147417856);
        }
        if (z) {
            getWindow().addFlags(8192);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        this.contentView = frameLayout;
        frameLayout.setBackground(this.backDrawable);
        this.contentView.setClipChildren(false);
        this.contentView.setClipToPadding(false);
        if (i4 >= 21) {
            this.contentView.setFitsSystemWindows(true);
            if (i4 >= 30) {
                this.contentView.setSystemUiVisibility(1792);
            } else {
                this.contentView.setSystemUiVisibility(1280);
            }
        }
        final Paint paint = new Paint();
        paint.setColor(Theme.getColor(Theme.key_dialogBackground));
        paint.setShadowLayer(AndroidUtilities.m54dp(2), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m55dp(-0.66f), 503316480);
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.2
            private RectF containerRect;
            private int contentHeight = Integer.MAX_VALUE;

            {
                TranslateAlert.this = this;
                new Path();
                this.containerRect = new RectF();
                new RectF();
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i5, int i6) {
                int size = View.MeasureSpec.getSize(i5);
                View.MeasureSpec.getSize(i5);
                int i7 = (int) (AndroidUtilities.displayMetrics.heightPixels * TranslateAlert.this.heightMaxPercent);
                if (TranslateAlert.this.textsView != null && TranslateAlert.this.textsView.getMeasuredHeight() <= 0) {
                    TranslateAlert.this.textsView.measure(View.MeasureSpec.makeMeasureSpec((((View.MeasureSpec.getSize(i5) - TranslateAlert.this.textsView.getPaddingLeft()) - TranslateAlert.this.textsView.getPaddingRight()) - TranslateAlert.this.textsContainerView.getPaddingLeft()) - TranslateAlert.this.textsContainerView.getPaddingRight(), 1073741824), 0);
                }
                int min = Math.min(i7, TranslateAlert.this.minHeight());
                int i8 = ((int) (min + ((AndroidUtilities.displayMetrics.heightPixels - min) * TranslateAlert.this.containerOpenAnimationT))) - AndroidUtilities.statusBarHeight;
                TranslateAlert.this.updateCanExpand();
                super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) Math.max(size * 0.8f, Math.min(AndroidUtilities.m54dp(480), size)), View.MeasureSpec.getMode(i5)), View.MeasureSpec.makeMeasureSpec(i8, 1073741824));
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z3, int i5, int i6, int i7, int i8) {
                super.onLayout(z3, i5, i6, i7, i8);
                this.contentHeight = Math.min(this.contentHeight, i8 - i6);
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                int width = getWidth();
                int height = getHeight();
                int m55dp = AndroidUtilities.m55dp((1.0f - TranslateAlert.this.containerOpenAnimationT) * 12.0f);
                canvas.clipRect(0, 0, width, height);
                this.containerRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height + m55dp);
                if (!TranslateAlert.this.dismissed) {
                    TranslateAlert.this.getSheetContainer().setTranslationY((1.0f - TranslateAlert.this.openingT) * height);
                } else {
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, (1.0f - TranslateAlert.this.openingT) * height);
                }
                float f = m55dp;
                canvas.drawRoundRect(this.containerRect, f, f, paint);
                super.onDraw(canvas);
            }
        };
        this.container = frameLayout2;
        frameLayout2.setWillNotDraw(false);
        this.header = new FrameLayout(context);
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setPivotX(LocaleController.isRTL ? textView.getWidth() : 0.0f);
        this.titleView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        this.titleView.setLines(1);
        this.titleView.setText(LocaleController.getString("AutomaticTranslation", C3290R.string.AutomaticTranslation));
        this.titleView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        TextView textView2 = this.titleView;
        int i5 = Theme.key_dialogTextBlack;
        textView2.setTextColor(Theme.getColor(i5));
        this.titleView.setTextSize(0, AndroidUtilities.m54dp(19));
        FrameLayout frameLayout3 = this.header;
        View view = this.titleView;
        FrameLayout.LayoutParams createFrame = LayoutHelper.createFrame(-1, -2, 55, 22, 22, 22, 0);
        this.titleLayout = createFrame;
        frameLayout3.addView(view, createFrame);
        this.titleView.post(new Runnable() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                TranslateAlert.this.lambda$new$11();
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        this.subtitleView = linearLayout;
        linearLayout.setOrientation(0);
        if (i4 >= 17) {
            this.subtitleView.setLayoutDirection(LocaleController.isRTL ? 1 : 0);
        }
        this.subtitleView.setGravity(LocaleController.isRTL ? 5 : 3);
        String languageName = languageName(str);
        String languageName2 = languageName == null ? languageName(str2) : languageName;
        int m54dp = AndroidUtilities.m54dp(14);
        int i6 = Theme.key_player_actionBarSubtitle;
        this.subtitleFromView = new InlineLoadingTextView(context, languageName2, m54dp, Theme.getColor(i6)) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.3
            {
                TranslateAlert.this = this;
            }

            @Override // com.iMe.fork.p024ui.dialog.TranslateAlert.InlineLoadingTextView
            protected void onLoadAnimation(float f) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) TranslateAlert.this.subtitleFromView.getLayoutParams();
                if (marginLayoutParams != null) {
                    if (LocaleController.isRTL) {
                        marginLayoutParams.leftMargin = AndroidUtilities.m55dp(2.0f - (f * 6.0f));
                    } else {
                        marginLayoutParams.rightMargin = AndroidUtilities.m55dp(2.0f - (f * 6.0f));
                    }
                    TranslateAlert.this.subtitleFromView.setLayoutParams(marginLayoutParams);
                }
            }
        };
        if (translationArgs != null && translationArgs.getType() != TranslationDialogType.REPLY) {
            this.subtitleFromView.toTextView.setPaintFlags(8);
            this.subtitleFromView.toTextView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TranslateAlert.this.lambda$new$12(view2);
                }
            });
        }
        this.subtitleFromView.showLoadingText = false;
        ImageView imageView = new ImageView(context);
        this.subtitleArrowView = imageView;
        imageView.setImageResource(C3290R.C3292drawable.search_arrow);
        this.subtitleArrowView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i6), PorterDuff.Mode.MULTIPLY));
        if (LocaleController.isRTL) {
            this.subtitleArrowView.setScaleX(-1.0f);
        }
        TextView textView3 = new TextView(context);
        this.subtitleToView = textView3;
        textView3.setLines(1);
        this.subtitleToView.setTextColor(Theme.getColor(i6));
        this.subtitleToView.setTextSize(0, AndroidUtilities.m54dp(14));
        this.subtitleToView.setText(languageName(str2));
        if (translationArgs != null && translationArgs.getType() != TranslationDialogType.REPLY) {
            this.subtitleToView.setPaintFlags(8);
            this.subtitleToView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TranslateAlert.this.lambda$new$13(view2);
                }
            });
        }
        if (LocaleController.isRTL) {
            this.subtitleView.setPadding(InlineLoadingTextView.paddingHorizontal, 0, 0, 0);
            this.subtitleView.addView(this.subtitleToView, LayoutHelper.createLinear(-2, -2, 16));
            this.subtitleView.addView(this.subtitleArrowView, LayoutHelper.createLinear(-2, -2, 16, 3, 1, 0, 0));
            this.subtitleView.addView(this.subtitleFromView, LayoutHelper.createLinear(-2, -2, 16, 2, 0, 0, 0));
        } else {
            this.subtitleView.setPadding(0, 0, InlineLoadingTextView.paddingHorizontal, 0);
            this.subtitleView.addView(this.subtitleFromView, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 2, 0));
            this.subtitleView.addView(this.subtitleArrowView, LayoutHelper.createLinear(-2, -2, 16, 0, 1, 3, 0));
            this.subtitleView.addView(this.subtitleToView, LayoutHelper.createLinear(-2, -2, 16));
        }
        if (languageName != null) {
            this.subtitleFromView.set(languageName);
        }
        FrameLayout frameLayout4 = this.header;
        View view2 = this.subtitleView;
        int i7 = LocaleController.isRTL ? 5 : 3;
        int i8 = LoadingTextView2.paddingHorizontal;
        float f = AndroidUtilities.density;
        FrameLayout.LayoutParams createFrame2 = LayoutHelper.createFrame(-1, -2.0f, i7 | 48, 22.0f - (i8 / AndroidUtilities.density), 47.0f - (LoadingTextView2.paddingVertical / f), 22.0f - (i8 / f), (float) BitmapDescriptorFactory.HUE_RED);
        this.subtitleLayout = createFrame2;
        frameLayout4.addView(view2, createFrame2);
        ImageView imageView2 = new ImageView(context);
        this.backButton = imageView2;
        imageView2.setImageResource(C3290R.C3292drawable.ic_ab_back);
        this.backButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i5), PorterDuff.Mode.MULTIPLY));
        this.backButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.backButton.setPadding(AndroidUtilities.m54dp(16), 0, AndroidUtilities.m54dp(16), 0);
        this.backButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector)));
        this.backButton.setClickable(false);
        this.backButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                TranslateAlert.this.lambda$new$14(view3);
            }
        });
        this.header.addView(this.backButton, LayoutHelper.createFrame(56, 56, 3));
        FrameLayout frameLayout5 = new FrameLayout(context);
        this.headerShadowView = frameLayout5;
        frameLayout5.setBackgroundColor(Theme.getColor(Theme.key_dialogShadowLine));
        this.headerShadowView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.header.addView(this.headerShadowView, LayoutHelper.createFrame(-1, 1, 87));
        this.header.setClipChildren(false);
        FrameLayout frameLayout6 = this.container;
        View view3 = this.header;
        FrameLayout.LayoutParams createFrame3 = LayoutHelper.createFrame(-1, 70, 55);
        this.headerLayout = createFrame3;
        frameLayout6.addView(view3, createFrame3);
        NestedScrollView nestedScrollView = new NestedScrollView(context) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.4
            {
                TranslateAlert.this = this;
            }

            @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return TranslateAlert.this.allowScroll && TranslateAlert.this.containerOpenAnimationT >= 1.0f && TranslateAlert.this.canExpand() && super.onInterceptTouchEvent(motionEvent);
            }

            @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
            public void onNestedScroll(View view4, int i9, int i10, int i11, int i12) {
                super.onNestedScroll(view4, i9, i10, i11, i12);
            }

            @Override // androidx.core.widget.NestedScrollView, android.view.View
            public void onScrollChanged(int i9, int i10, int i11, int i12) {
                super.onScrollChanged(i9, i10, i11, i12);
                if (TranslateAlert.this.checkForNextLoading()) {
                    TranslateAlert.this.openAnimationTo(1.0f, true);
                }
            }
        };
        this.scrollView = nestedScrollView;
        nestedScrollView.setClipChildren(true);
        TextView textView4 = new TextView(context) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.5
            {
                TranslateAlert.this = this;
            }

            @Override // android.widget.TextView, android.view.View
            protected void onMeasure(int i9, int i10) {
                super.onMeasure(i9, TranslateAlert.MOST_SPEC);
            }

            @Override // android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                canvas.translate(getPaddingLeft(), getPaddingTop());
                if (TranslateAlert.this.links == null || !TranslateAlert.this.links.draw(canvas)) {
                    return;
                }
                invalidate();
            }

            @Override // android.widget.TextView
            public boolean onTextContextMenuItem(int i9) {
                if (i9 == 16908321 && isFocused()) {
                    ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", getText().subSequence(Math.max(0, Math.min(getSelectionStart(), getSelectionEnd())), Math.max(0, Math.max(getSelectionStart(), getSelectionEnd())))));
                    BulletinFactory.m30of(TranslateAlert.this.bulletinContainer, null).createCopyBulletin(LocaleController.getString("TextCopied", C3290R.string.TextCopied)).show();
                    clearFocus();
                    return true;
                }
                return super.onTextContextMenuItem(i9);
            }
        };
        this.allTextsView = textView4;
        this.links = new LinkSpanDrawable.LinkCollector(textView4);
        this.allTextsView.setTextColor(0);
        this.allTextsView.setTextSize(1, 16.0f);
        this.allTextsView.setTextIsSelectable(!z);
        this.allTextsView.setHighlightColor(Theme.getColor(Theme.key_chat_inTextSelectionHighlight));
        int color = Theme.getColor(Theme.key_chat_TextSelectionCursor);
        if (i4 >= 29) {
            try {
                if (!XiaomiUtilities.isMIUI()) {
                    Drawable textSelectHandleLeft = this.allTextsView.getTextSelectHandleLeft();
                    textSelectHandleLeft.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                    this.allTextsView.setTextSelectHandleLeft(textSelectHandleLeft);
                    Drawable textSelectHandleRight = this.allTextsView.getTextSelectHandleRight();
                    textSelectHandleRight.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                    this.allTextsView.setTextSelectHandleRight(textSelectHandleRight);
                }
            } catch (Exception unused) {
            }
        }
        this.allTextsView.setFocusable(true);
        this.allTextsView.setMovementMethod(new LinkMovementMethod());
        TextBlocksLayout textBlocksLayout = new TextBlocksLayout(context, AndroidUtilities.m54dp(16), Theme.getColor(Theme.key_dialogTextBlack), this.allTextsView);
        this.textsView = textBlocksLayout;
        int m54dp2 = AndroidUtilities.m54dp(22);
        int i9 = LoadingTextView2.paddingHorizontal;
        int m54dp3 = AndroidUtilities.m54dp(12);
        int i10 = LoadingTextView2.paddingVertical;
        textBlocksLayout.setPadding(m54dp2 - i9, m54dp3 - i10, AndroidUtilities.m54dp(22) - i9, AndroidUtilities.m54dp(12) - i10);
        if (translationArgs == null) {
            Iterator<CharSequence> it = this.textBlocks.iterator();
            while (it.hasNext()) {
                this.textsView.addBlock(it.next());
            }
        }
        this.textsContainerView = new FrameLayout(context);
        if (translationArgs != null && translationArgs.getType() == TranslationDialogType.REPLY) {
            initEditText();
            i3 = -1;
        } else {
            i3 = -1;
            this.textsContainerView.addView(this.textsView, LayoutHelper.createFrame(-1, -2));
        }
        this.scrollView.addView(this.textsContainerView, LayoutHelper.createLinear(i3, -2, 1.0f));
        FrameLayout frameLayout7 = this.container;
        View view4 = this.scrollView;
        FrameLayout.LayoutParams createFrame4 = LayoutHelper.createFrame(-1, -2, 119, 0, 70, 0, 81);
        this.scrollViewLayout = createFrame4;
        frameLayout7.addView(view4, createFrame4);
        FrameLayout frameLayout8 = new FrameLayout(context);
        this.buttonShadowView = frameLayout8;
        frameLayout8.setBackgroundColor(Theme.getColor(Theme.key_dialogShadowLine));
        this.container.addView(this.buttonShadowView, LayoutHelper.createFrame(-1, 1, 87, 0, 0, 0, 80));
        TextView textView5 = new TextView(context);
        this.buttonTextView = textView5;
        textView5.setLines(1);
        this.buttonTextView.setSingleLine(true);
        this.buttonTextView.setGravity(1);
        this.buttonTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.buttonTextView.setGravity(17);
        this.buttonTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        this.buttonTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.buttonTextView.setTextSize(1, 14.0f);
        this.buttonTextView.setText(LocaleController.getString("CloseTranslation", C3290R.string.CloseTranslation));
        this.buttonTextView.setText(LocaleController.getString("Close", C3290R.string.Close));
        ImageView imageView3 = new ImageView(getContext());
        this.buttonImageView = imageView3;
        imageView3.setImageResource(C3290R.C3292drawable.msg_close);
        this.buttonView = new FrameLayout(context);
        if (translationArgs != null && translationArgs.getType() == TranslationDialogType.INCOMING) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            this.buttonLinear = linearLayout2;
            linearLayout2.setGravity(17);
            this.buttonLinear.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor(Theme.key_featuredStickers_addButton), 4.0f));
            this.buttonLinear.addView(imageView3, LayoutHelper.createLinear(-2, -2, 17, 0, 0, 18, 0));
            this.buttonLinear.addView(this.buttonTextView);
            this.buttonLinear.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    TranslateAlert.this.lambda$new$15(view5);
                }
            });
            initContainerButton();
        } else {
            FrameLayout frameLayout9 = this.buttonView;
            int i11 = Theme.key_featuredStickers_addButton;
            frameLayout9.setBackground(Theme.AdaptiveRipple.filledRect(i11, 4.0f));
            this.buttonView.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor(i11), 4.0f));
            this.buttonView.addView(imageView3, LayoutHelper.createFrame(-2, -2, 19));
            this.buttonView.addView(this.buttonTextView);
            this.buttonView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    TranslateAlert.this.lambda$new$16(view5);
                }
            });
            this.container.addView(this.buttonView, LayoutHelper.createFrame(-1, 48, 80, 16, 16, 16, 16));
            this.contentView.addView(this.container, LayoutHelper.createFrame(-1, -2, 81));
        }
        if (translationArgs != null) {
            initButtonsByType();
        }
        FrameLayout frameLayout10 = new FrameLayout(context);
        this.bulletinContainer = frameLayout10;
        this.contentView.addView(frameLayout10, LayoutHelper.createFrame(-1, -1, 119, 0, 0, 0, 81));
    }

    public /* synthetic */ void lambda$new$11() {
        TextView textView = this.titleView;
        textView.setPivotX(LocaleController.isRTL ? textView.getWidth() : BitmapDescriptorFactory.HUE_RED);
    }

    public /* synthetic */ void lambda$new$12(View view) {
        this.translateText = "";
        this.translationPresenter.loadLanguages(true);
    }

    public /* synthetic */ void lambda$new$13(View view) {
        this.translateText = "";
        this.translationPresenter.loadLanguages(false);
    }

    public /* synthetic */ void lambda$new$14(View view) {
        dismiss();
    }

    public /* synthetic */ void lambda$new$15(View view) {
        dismiss();
    }

    public /* synthetic */ void lambda$new$16(View view) {
        dismiss();
    }

    private boolean scrollAtBottom() {
        NestedScrollView nestedScrollView = this.scrollView;
        int bottom = nestedScrollView.getChildAt(nestedScrollView.getChildCount() - 1).getBottom();
        LoadingTextView2 firstUnloadedBlock = this.textsView.getFirstUnloadedBlock();
        if (firstUnloadedBlock != null) {
            bottom = firstUnloadedBlock.getTop();
        }
        return bottom - (this.scrollView.getHeight() + this.scrollView.getScrollY()) <= this.textsContainerView.getPaddingBottom();
    }

    private void setScrollY(float f) {
        openAnimation(f);
        float max = Math.max(Math.min(f + 1.0f, 1.0f), (float) BitmapDescriptorFactory.HUE_RED);
        this.openingT = max;
        this.backDrawable.setAlpha((int) (max * 51.0f));
        this.container.invalidate();
        this.bulletinContainer.setTranslationY((1.0f - this.openingT) * Math.min(minHeight(), AndroidUtilities.displayMetrics.heightPixels * this.heightMaxPercent));
    }

    private void scrollYTo(float f) {
        scrollYTo(f, null);
    }

    private void scrollYTo(float f, Runnable runnable) {
        openAnimationTo(f, false, runnable);
        openTo(f + 1.0f, false);
    }

    private float getScrollY() {
        return Math.max(Math.min(this.containerOpenAnimationT - (1.0f - this.openingT), 1.0f), (float) BitmapDescriptorFactory.HUE_RED);
    }

    private boolean hasSelection() {
        return this.allTextsView.hasSelection();
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet, android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        float round;
        float f;
        ClickableSpan[] clickableSpanArr;
        try {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.container.getGlobalVisibleRect(this.containerRect);
            int i = (int) x;
            int i2 = (int) y;
            boolean z = false;
            if (!this.containerRect.contains(i, i2)) {
                if (motionEvent.getAction() == 0) {
                    this.pressedOutside = true;
                    return true;
                } else if (motionEvent.getAction() == 1 && this.pressedOutside) {
                    this.pressedOutside = false;
                    dismiss();
                    return true;
                }
            }
            try {
                this.allTextsView.getGlobalVisibleRect(this.textRect);
                if (this.textRect.contains(i, i2) && !this.maybeScrolling) {
                    Layout layout = this.allTextsView.getLayout();
                    int top = (int) ((((y - this.allTextsView.getTop()) - this.container.getTop()) - this.scrollView.getTop()) + this.scrollView.getScrollY());
                    int lineForVertical = layout.getLineForVertical(top);
                    float left = (int) ((x - this.allTextsView.getLeft()) - this.container.getLeft());
                    int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, left);
                    float lineLeft = layout.getLineLeft(lineForVertical);
                    if ((this.allTexts instanceof Spannable) && lineLeft <= left && lineLeft + layout.getLineWidth(lineForVertical) >= left && (clickableSpanArr = (ClickableSpan[]) this.allTexts.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class)) != null && clickableSpanArr.length >= 1) {
                        if (motionEvent.getAction() == 1 && this.pressedLink.getSpan() == clickableSpanArr[0]) {
                            ((ClickableSpan) this.pressedLink.getSpan()).onClick(this.allTextsView);
                            LinkSpanDrawable.LinkCollector linkCollector = this.links;
                            if (linkCollector != null) {
                                linkCollector.removeLink(this.pressedLink);
                            }
                            this.pressedLink = null;
                            this.allTextsView.setTextIsSelectable(!this.noforwards);
                        } else if (motionEvent.getAction() == 0) {
                            LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(clickableSpanArr[0], this.fragment.getResourceProvider(), left, top, false);
                            this.pressedLink = linkSpanDrawable;
                            LinkSpanDrawable.LinkCollector linkCollector2 = this.links;
                            if (linkCollector2 != null) {
                                linkCollector2.addLink(linkSpanDrawable);
                            }
                            LinkPath obtainNewPath = this.pressedLink.obtainNewPath();
                            int spanStart = this.allTexts.getSpanStart(this.pressedLink.getSpan());
                            int spanEnd = this.allTexts.getSpanEnd(this.pressedLink.getSpan());
                            obtainNewPath.setCurrentLayout(layout, spanStart, BitmapDescriptorFactory.HUE_RED);
                            layout.getSelectionPath(spanStart, spanEnd, obtainNewPath);
                        }
                        this.allTextsView.invalidate();
                        return true;
                    }
                }
                if (this.pressedLink != null) {
                    LinkSpanDrawable.LinkCollector linkCollector3 = this.links;
                    if (linkCollector3 != null) {
                        linkCollector3.clear();
                    }
                    this.pressedLink = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.scrollView.getGlobalVisibleRect(this.scrollRect);
            this.backButton.getGlobalVisibleRect(this.backRect);
            this.buttonView.getGlobalVisibleRect(this.buttonRect);
            if (this.pressedLink == null && !hasSelection()) {
                if (!this.backRect.contains(i, i2) && motionEvent.getAction() == 0) {
                    this.fromScrollRect = this.scrollRect.contains(i, i2) && (this.containerOpenAnimationT > BitmapDescriptorFactory.HUE_RED || !canExpand());
                    this.maybeScrolling = true;
                    if (this.scrollRect.contains(i, i2) && this.textsView.getBlocksCount() > 0 && !this.textsView.getBlockAt(0).loaded) {
                        z = true;
                    }
                    this.scrolling = z;
                    this.fromY = y;
                    this.fromScrollY = getScrollY();
                    this.fromScrollViewY = this.scrollView.getScrollY();
                    super.dispatchTouchEvent(motionEvent);
                    return true;
                } else if (this.maybeScrolling && (motionEvent.getAction() == 2 || motionEvent.getAction() == 1)) {
                    float f2 = this.fromY - y;
                    if (this.fromScrollRect) {
                        f2 = -Math.max((float) BitmapDescriptorFactory.HUE_RED, (-(this.fromScrollViewY + AndroidUtilities.m54dp(48))) - f2);
                        if (f2 < BitmapDescriptorFactory.HUE_RED) {
                            this.scrolling = true;
                            this.allTextsView.setTextIsSelectable(false);
                        }
                    } else if (Math.abs(f2) > AndroidUtilities.m54dp(4) && !this.fromScrollRect) {
                        this.scrolling = true;
                        this.allTextsView.setTextIsSelectable(false);
                        this.scrollView.stopNestedScroll();
                        this.allowScroll = false;
                    }
                    float f3 = AndroidUtilities.displayMetrics.heightPixels;
                    float min = Math.min(minHeight(), this.heightMaxPercent * f3);
                    float f4 = f3 - min;
                    float min2 = ((1.0f - (-Math.min(Math.max(this.fromScrollY, -1.0f), (float) BitmapDescriptorFactory.HUE_RED))) * min) + (Math.min(1.0f, Math.max(this.fromScrollY, (float) BitmapDescriptorFactory.HUE_RED)) * f4) + f2;
                    float f5 = min2 > min ? (min2 - min) / f4 : -(1.0f - (min2 / min));
                    if (!canExpand()) {
                        f5 = Math.min(f5, (float) BitmapDescriptorFactory.HUE_RED);
                    }
                    updateCanExpand();
                    if (this.scrolling) {
                        setScrollY(f5);
                        if (motionEvent.getAction() == 1) {
                            this.scrolling = false;
                            this.allTextsView.setTextIsSelectable(!this.noforwards);
                            this.maybeScrolling = false;
                            this.allowScroll = true;
                            if (Math.abs(f2) > AndroidUtilities.m54dp(16)) {
                                round = Math.round(this.fromScrollY) + ((f5 > this.fromScrollY ? 1.0f : -1.0f) * ((float) Math.ceil(Math.abs(f - f5))));
                            } else {
                                round = Math.round(this.fromScrollY);
                            }
                            scrollYTo(round, new Runnable() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda18
                                @Override // java.lang.Runnable
                                public final void run() {
                                    TranslateAlert.this.lambda$dispatchTouchEvent$17();
                                }
                            });
                        }
                        return true;
                    }
                }
            }
            if (hasSelection() && this.maybeScrolling) {
                this.scrolling = false;
                this.allTextsView.setTextIsSelectable(!this.noforwards);
                this.maybeScrolling = false;
                this.allowScroll = true;
                scrollYTo(Math.round(this.fromScrollY));
            }
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception e2) {
            e2.printStackTrace();
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    public /* synthetic */ void lambda$dispatchTouchEvent$17() {
        this.contentView.post(new Runnable() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                TranslateAlert.this.checkForNextLoading();
            }
        });
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet, org.telegram.p044ui.ActionBar.BottomSheet, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.contentView.setPadding(0, 0, 0, 0);
        Window window = getWindow();
        window.setWindowAnimations(C3290R.style.DialogNoAnimation);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.gravity = 51;
        attributes.dimAmount = BitmapDescriptorFactory.HUE_RED;
        attributes.flags &= -3;
        TranslationArgs translationArgs = this.translationArgs;
        if (translationArgs != null && translationArgs.getType() == TranslationDialogType.REPLY) {
            attributes.softInputMode = 16;
            attributes.flags &= -131073;
        } else {
            attributes.flags |= 131072;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            attributes.flags |= -2147417856;
        }
        attributes.flags |= 256;
        attributes.height = -1;
        window.setAttributes(attributes);
        int color = Theme.getColor(Theme.key_windowBackgroundWhite);
        AndroidUtilities.setNavigationBarColor(window, color);
        AndroidUtilities.setLightNavigationBar(window, ((double) AndroidUtilities.computePerceivedBrightness(color)) > 0.721d);
        this.container.forceLayout();
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        openAnimation(BitmapDescriptorFactory.HUE_RED);
        openTo(1.0f, true, true);
        Activity parentActivity = this.fragment.getParentActivity();
        if (parentActivity != null && parentActivity.getCurrentFocus() != null) {
            AndroidUtilities.hideKeyboard(parentActivity.getCurrentFocus());
        }
        this.contentView.setBackgroundColor(0);
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        EditTextBoldCursor editTextBoldCursor = this.editText;
        if (editTextBoldCursor != null) {
            AndroidUtilities.hideKeyboard(editTextBoldCursor);
        }
        if (this.dismissed) {
            return;
        }
        this.dismissed = true;
        super.dismiss();
    }

    private void openTo(float f, boolean z) {
        openTo(f, z, false);
    }

    private void openTo(float f, boolean z, final boolean z2) {
        Runnable runnable;
        final float min = Math.min(Math.max(f, (float) BitmapDescriptorFactory.HUE_RED), 1.0f);
        if (!this.openingAnimatorPriority || z) {
            this.openingAnimatorPriority = z;
            ValueAnimator valueAnimator = this.openingAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.openingAnimator = ValueAnimator.ofFloat(this.openingT, min);
            this.backDrawable.setAlpha((int) (this.openingT * 51.0f));
            this.openingAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TranslateAlert.this.lambda$openTo$18(valueAnimator2);
                }
            });
            if (min <= BitmapDescriptorFactory.HUE_RED && (runnable = this.onDismiss) != null) {
                runnable.run();
            }
            this.openingAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.iMe.fork.ui.dialog.TranslateAlert.7
                {
                    TranslateAlert.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (!TranslateAlert.this.shouldShowKeyboard || TranslateAlert.this.editText == null) {
                        return;
                    }
                    TranslateAlert.this.editText.requestFocus();
                    AndroidUtilities.showKeyboard(TranslateAlert.this.editText);
                    TranslateAlert.this.shouldShowKeyboard = false;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (min <= BitmapDescriptorFactory.HUE_RED) {
                        TranslateAlert.this.dismissInternal();
                    } else if (z2) {
                        TranslateAlert.this.allTextsView.setTextIsSelectable(!TranslateAlert.this.noforwards);
                        TranslateAlert.this.allTextsView.invalidate();
                        TranslateAlert.this.scrollView.stopNestedScroll();
                        TranslateAlert.this.openAnimation(min - 1.0f);
                    }
                    TranslateAlert.this.openingAnimatorPriority = false;
                }
            });
            this.openingAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.openingAnimator.setDuration(Math.abs(this.openingT - min) * (this.fastHide ? 200 : 380));
            this.openingAnimator.setStartDelay(z2 ? 60L : 0L);
            this.openingAnimator.start();
        }
    }

    public /* synthetic */ void lambda$openTo$18(ValueAnimator valueAnimator) {
        this.openingT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.container.invalidate();
        this.backDrawable.setAlpha((int) (this.openingT * 51.0f));
        this.bulletinContainer.setTranslationY((1.0f - this.openingT) * Math.min(minHeight(), AndroidUtilities.displayMetrics.heightPixels * this.heightMaxPercent));
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    public void dismissInternal() {
        try {
            super.dismissInternal();
        } catch (Exception e) {
            FileLog.m49e(e);
        }
    }

    public String languageName(String str) {
        if (str == null || str.equals("und") || str.equals(TtmlNode.TEXT_EMPHASIS_AUTO)) {
            return null;
        }
        LocaleController.LocaleInfo builtinLanguageByPlural = LocaleController.getInstance().getBuiltinLanguageByPlural(str);
        LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
        if (builtinLanguageByPlural == null) {
            return null;
        }
        if (currentLocaleInfo != null && "en".equals(currentLocaleInfo.pluralLangCode)) {
            return builtinLanguageByPlural.nameEnglish;
        }
        return builtinLanguageByPlural.name;
    }

    public boolean checkForNextLoading() {
        return scrollAtBottom();
    }

    /* renamed from: com.iMe.fork.ui.dialog.TranslateAlert$TextBlocksLayout */
    /* loaded from: classes3.dex */
    public static class TextBlocksLayout extends ViewGroup {
        private static final int gap = ((-LoadingTextView2.paddingVertical) * 4) + AndroidUtilities.m55dp(0.48f);
        private final int fontSize;
        private final int textColor;
        private TextView wholeTextView;

        protected void onHeightUpdated(int i) {
        }

        public TextBlocksLayout(Context context, int i, int i2, TextView textView) {
            super(context);
            this.fontSize = i;
            this.textColor = i2;
            if (textView != null) {
                int i3 = LoadingTextView2.paddingHorizontal;
                int i4 = LoadingTextView2.paddingVertical;
                textView.setPadding(i3, i4, i3, i4);
                this.wholeTextView = textView;
                addView(textView);
            }
        }

        public void setWholeText(CharSequence charSequence) {
            this.wholeTextView.clearFocus();
            this.wholeTextView.setText(charSequence);
        }

        public LoadingTextView2 addBlock(CharSequence charSequence) {
            LoadingTextView2 loadingTextView2 = new LoadingTextView2(getContext(), charSequence, getBlocksCount() > 0, this.fontSize, this.textColor);
            loadingTextView2.setFocusable(false);
            addView(loadingTextView2);
            TextView textView = this.wholeTextView;
            if (textView != null) {
                textView.bringToFront();
            }
            return loadingTextView2;
        }

        public int getBlocksCount() {
            return getChildCount() - (this.wholeTextView != null ? 1 : 0);
        }

        public LoadingTextView2 getBlockAt(int i) {
            View childAt = getChildAt(i);
            if (childAt instanceof LoadingTextView2) {
                return (LoadingTextView2) childAt;
            }
            return null;
        }

        public LoadingTextView2 getFirstUnloadedBlock() {
            int blocksCount = getBlocksCount();
            for (int i = 0; i < blocksCount; i++) {
                LoadingTextView2 blockAt = getBlockAt(i);
                if (blockAt != null && !blockAt.loaded) {
                    return blockAt;
                }
            }
            return null;
        }

        public int height() {
            int blocksCount = getBlocksCount();
            int i = 0;
            for (int i2 = 0; i2 < blocksCount; i2++) {
                i += getBlockAt(i2).height();
            }
            return getPaddingTop() + i + getPaddingBottom();
        }

        public void updateHeight() {
            int height = height();
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, height);
            } else {
                r2 = layoutParams.height != height;
                layoutParams.height = height;
            }
            if (r2) {
                setLayoutParams(layoutParams);
                onHeightUpdated(height);
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int blocksCount = getBlocksCount();
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight(), View.MeasureSpec.getMode(i));
            for (int i3 = 0; i3 < blocksCount; i3++) {
                getBlockAt(i3).measure(makeMeasureSpec, TranslateAlert.MOST_SPEC);
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(height(), 1073741824));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int blocksCount = getBlocksCount();
            int i5 = 0;
            int i6 = 0;
            while (i5 < blocksCount) {
                LoadingTextView2 blockAt = getBlockAt(i5);
                int height = blockAt.height();
                int i7 = i5 > 0 ? gap : 0;
                blockAt.layout(getPaddingLeft(), getPaddingTop() + i6 + i7, (i3 - i) - getPaddingRight(), getPaddingTop() + i6 + height + i7);
                i6 += height;
                if (i5 > 0 && i5 < blocksCount - 1) {
                    i6 += gap;
                }
                i5++;
            }
            int i8 = i3 - i;
            this.wholeTextView.measure(View.MeasureSpec.makeMeasureSpec((i8 - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(((i4 - i2) - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.wholeTextView.layout(getPaddingLeft(), getPaddingTop(), i8 - getPaddingRight(), getPaddingTop() + this.wholeTextView.getMeasuredHeight());
        }
    }

    /* renamed from: com.iMe.fork.ui.dialog.TranslateAlert$InlineLoadingTextView */
    /* loaded from: classes3.dex */
    public static class InlineLoadingTextView extends ViewGroup {
        public static final int paddingHorizontal = AndroidUtilities.m54dp(6);
        private final TextView fromTextView;
        private final float gradientWidth;
        private final Path inPath;
        private ValueAnimator loadedAnimator;
        private final ValueAnimator loadingAnimator;
        private final Paint loadingPaint;
        private final Path loadingPath;
        public float loadingT;
        private final RectF rect;
        private final Path shadePath;
        public boolean showLoadingText;
        private final long start;
        private final Path tempPath;
        private final TextView toTextView;

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            return false;
        }

        protected void onLoadAnimation(float f) {
        }

        void setFromLanguageText(String str) {
            this.fromTextView.setText(str);
        }

        public InlineLoadingTextView(Context context, CharSequence charSequence, int i, int i2) {
            super(context);
            this.showLoadingText = true;
            this.start = SystemClock.elapsedRealtime();
            this.loadingT = BitmapDescriptorFactory.HUE_RED;
            this.loadedAnimator = null;
            this.rect = new RectF();
            this.inPath = new Path();
            this.tempPath = new Path();
            this.loadingPath = new Path();
            this.shadePath = new Path();
            Paint paint = new Paint();
            this.loadingPaint = paint;
            float m55dp = AndroidUtilities.m55dp(350.0f);
            this.gradientWidth = m55dp;
            int i3 = paddingHorizontal;
            setPadding(i3, 0, i3, 0);
            setClipChildren(false);
            setWillNotDraw(false);
            TextView textView = new TextView(this, context) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.InlineLoadingTextView.1
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i4, int i5) {
                    super.onMeasure(TranslateAlert.MOST_SPEC, TranslateAlert.MOST_SPEC);
                }
            };
            this.fromTextView = textView;
            float f = i;
            textView.setTextSize(0, f);
            textView.setTextColor(i2);
            textView.setText(charSequence);
            textView.setLines(1);
            textView.setMaxLines(1);
            textView.setSingleLine(true);
            textView.setEllipsize(null);
            textView.setFocusable(false);
            textView.setImportantForAccessibility(2);
            addView(textView);
            TextView textView2 = new TextView(this, context) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.InlineLoadingTextView.2
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i4, int i5) {
                    super.onMeasure(TranslateAlert.MOST_SPEC, TranslateAlert.MOST_SPEC);
                }
            };
            this.toTextView = textView2;
            textView2.setTextSize(0, f);
            textView2.setTextColor(i2);
            textView2.setLines(1);
            textView2.setMaxLines(1);
            textView2.setSingleLine(true);
            textView2.setEllipsize(null);
            textView2.setFocusable(true);
            addView(textView2);
            int color = Theme.getColor(Theme.key_dialogBackground);
            paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m55dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{color, Theme.getColor(Theme.key_dialogBackgroundGray), color}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.67f, 1.0f}, Shader.TileMode.REPEAT));
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.loadingAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$InlineLoadingTextView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TranslateAlert.InlineLoadingTextView.this.lambda$new$0(valueAnimator);
                }
            });
            ofFloat.setDuration(Long.MAX_VALUE);
            ofFloat.start();
        }

        public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
            invalidate();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            this.fromTextView.measure(0, 0);
            this.toTextView.measure(0, 0);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.lerp(this.fromTextView.getMeasuredWidth(), this.toTextView.getMeasuredWidth(), this.loadingT) + getPaddingLeft() + getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max(this.fromTextView.getMeasuredHeight(), this.toTextView.getMeasuredHeight()), 1073741824));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            this.fromTextView.layout(getPaddingLeft(), getPaddingTop(), getPaddingLeft() + this.fromTextView.getMeasuredWidth(), getPaddingTop() + this.fromTextView.getMeasuredHeight());
            this.toTextView.layout(getPaddingLeft(), getPaddingTop(), getPaddingLeft() + this.toTextView.getMeasuredWidth(), getPaddingTop() + this.toTextView.getMeasuredHeight());
            updateWidth();
        }

        private void updateWidth() {
            int lerp = AndroidUtilities.lerp(this.fromTextView.getMeasuredWidth(), this.toTextView.getMeasuredWidth(), this.loadingT) + getPaddingLeft() + getPaddingRight();
            int max = Math.max(this.fromTextView.getMeasuredHeight(), this.toTextView.getMeasuredHeight());
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            boolean z = true;
            if (layoutParams == null) {
                layoutParams = new LinearLayout.LayoutParams(lerp, max);
            } else {
                if (layoutParams.width == lerp && layoutParams.height == max) {
                    z = false;
                }
                layoutParams.width = lerp;
                layoutParams.height = max;
            }
            if (z) {
                setLayoutParams(layoutParams);
            }
        }

        public void loaded(CharSequence charSequence) {
            loaded(charSequence, 350L, null);
        }

        public void loaded(CharSequence charSequence, long j, final Runnable runnable) {
            this.toTextView.setText(charSequence);
            if (this.loadingAnimator.isRunning()) {
                this.loadingAnimator.cancel();
            }
            if (this.loadedAnimator == null) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.loadedAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$InlineLoadingTextView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        TranslateAlert.InlineLoadingTextView.this.lambda$loaded$1(valueAnimator);
                    }
                });
                this.loadedAnimator.addListener(new AnimatorListenerAdapter(this) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.InlineLoadingTextView.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                });
                this.loadedAnimator.setDuration(j);
                this.loadedAnimator.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                this.loadedAnimator.start();
            }
        }

        public /* synthetic */ void lambda$loaded$1(ValueAnimator valueAnimator) {
            this.loadingT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            updateWidth();
            invalidate();
            onLoadAnimation(this.loadingT);
        }

        public void set(CharSequence charSequence) {
            this.toTextView.setText(charSequence);
            if (this.loadingAnimator.isRunning()) {
                this.loadingAnimator.cancel();
            }
            ValueAnimator valueAnimator = this.loadedAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.loadedAnimator = null;
            }
            this.loadingT = 1.0f;
            requestLayout();
            updateWidth();
            invalidate();
            onLoadAnimation(1.0f);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float width = getWidth();
            float height = getHeight();
            float max = LocaleController.isRTL ? Math.max(width / 2.0f, width - 8.0f) : Math.min(width / 2.0f, 8.0f);
            float min = Math.min(height / 2.0f, 8.0f);
            float f = max * max;
            float f2 = min * min;
            float f3 = width - max;
            float f4 = f3 * f3;
            float f5 = height - min;
            float f6 = f5 * f5;
            float sqrt = this.loadingT * ((float) Math.sqrt(Math.max(Math.max(f + f2, f2 + f4), Math.max(f + f6, f4 + f6))));
            this.inPath.reset();
            this.inPath.addCircle(max, min, sqrt, Path.Direction.CW);
            canvas.save();
            canvas.clipPath(this.inPath, Region.Op.DIFFERENCE);
            this.loadingPaint.setAlpha((int) ((1.0f - this.loadingT) * 255.0f));
            float f7 = this.gradientWidth;
            float f8 = this.gradientWidth;
            float elapsedRealtime = f7 - (((((float) (SystemClock.elapsedRealtime() - this.start)) / 1000.0f) * f8) % f8);
            this.shadePath.reset();
            this.shadePath.addRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height, Path.Direction.CW);
            this.loadingPath.reset();
            this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height);
            this.loadingPath.addRoundRect(this.rect, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), Path.Direction.CW);
            canvas.clipPath(this.loadingPath);
            canvas.translate(-elapsedRealtime, BitmapDescriptorFactory.HUE_RED);
            this.shadePath.offset(elapsedRealtime, BitmapDescriptorFactory.HUE_RED, this.tempPath);
            canvas.drawPath(this.tempPath, this.loadingPaint);
            canvas.translate(elapsedRealtime, BitmapDescriptorFactory.HUE_RED);
            canvas.restore();
            if (this.showLoadingText && this.fromTextView != null) {
                canvas.save();
                this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height);
                canvas.clipPath(this.inPath, Region.Op.DIFFERENCE);
                canvas.translate(paddingHorizontal, BitmapDescriptorFactory.HUE_RED);
                canvas.saveLayerAlpha(this.rect, 20, 31);
                this.fromTextView.draw(canvas);
                canvas.restore();
                canvas.restore();
            }
            if (this.toTextView != null) {
                canvas.save();
                canvas.clipPath(this.inPath);
                canvas.translate(paddingHorizontal, BitmapDescriptorFactory.HUE_RED);
                canvas.saveLayerAlpha(this.rect, (int) (this.loadingT * 255.0f), 31);
                this.toTextView.draw(canvas);
                if (this.loadingT < 1.0f) {
                    canvas.restore();
                }
                canvas.restore();
            }
        }
    }

    /* renamed from: com.iMe.fork.ui.dialog.TranslateAlert$LoadingTextView2 */
    /* loaded from: classes3.dex */
    public static class LoadingTextView2 extends ViewGroup {
        public static final int paddingHorizontal = AndroidUtilities.m54dp(6);
        public static final int paddingVertical = AndroidUtilities.m55dp(1.5f);
        private RectF fetchedPathRect;
        private final TextView fromTextView;
        private final float gradientWidth;
        private final Path inPath;
        int lastWidth;
        public boolean loaded;
        private ValueAnimator loadedAnimator;
        private final ValueAnimator loadingAnimator;
        private final Paint loadingPaint;
        private final Path loadingPath;
        private float loadingT;
        private final RectF rect;
        private float scaleT;
        private final Path shadePath;
        public boolean showLoadingText;
        private final long start;
        private final Path tempPath;
        private final TextView toTextView;

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            return false;
        }

        public TextView getFromTextView() {
            return this.fromTextView;
        }

        public TextView getToTextView() {
            return this.toTextView;
        }

        public LoadingTextView2(Context context, CharSequence charSequence, final boolean z, int i, int i2) {
            super(context);
            this.showLoadingText = true;
            this.start = SystemClock.elapsedRealtime();
            this.scaleT = 1.0f;
            this.loaded = false;
            this.loadingT = BitmapDescriptorFactory.HUE_RED;
            this.loadedAnimator = null;
            this.lastWidth = 0;
            this.fetchedPathRect = new RectF();
            this.rect = new RectF();
            this.inPath = new Path();
            this.tempPath = new Path();
            this.loadingPath = new Path();
            this.shadePath = new Path();
            Paint paint = new Paint();
            this.loadingPaint = paint;
            float m55dp = AndroidUtilities.m55dp(350.0f);
            this.gradientWidth = m55dp;
            int i3 = paddingHorizontal;
            int i4 = paddingVertical;
            setPadding(i3, i4, i3, i4);
            setClipChildren(false);
            setWillNotDraw(false);
            setFocusable(false);
            TextView textView = new TextView(this, context) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.LoadingTextView2.1
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i5, int i6) {
                    super.onMeasure(i5, TranslateAlert.MOST_SPEC);
                }
            };
            this.fromTextView = textView;
            float f = i;
            textView.setTextSize(0, f);
            textView.setTextColor(i2);
            textView.setText(charSequence);
            textView.setLines(0);
            textView.setMaxLines(0);
            textView.setSingleLine(false);
            textView.setEllipsize(null);
            textView.setFocusable(false);
            textView.setImportantForAccessibility(2);
            addView(textView);
            TextView textView2 = new TextView(this, context) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.LoadingTextView2.2
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i5, int i6) {
                    super.onMeasure(i5, TranslateAlert.MOST_SPEC);
                }
            };
            this.toTextView = textView2;
            textView2.setTextSize(0, f);
            textView2.setTextColor(i2);
            textView2.setLines(0);
            textView2.setMaxLines(0);
            textView2.setSingleLine(false);
            textView2.setEllipsize(null);
            textView2.setFocusable(false);
            textView2.setImportantForAccessibility(2);
            addView(textView2);
            int color = Theme.getColor(Theme.key_dialogBackground);
            paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m55dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{color, Theme.getColor(Theme.key_dialogBackgroundGray), color}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.67f, 1.0f}, Shader.TileMode.REPEAT));
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.loadingAnimator = ofFloat;
            if (z) {
                this.scaleT = BitmapDescriptorFactory.HUE_RED;
            }
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$LoadingTextView2$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TranslateAlert.LoadingTextView2.this.lambda$new$0(z, valueAnimator);
                }
            });
            ofFloat.setDuration(Long.MAX_VALUE);
            ofFloat.start();
        }

        public /* synthetic */ void lambda$new$0(boolean z, ValueAnimator valueAnimator) {
            invalidate();
            if (z) {
                boolean z2 = this.scaleT < 1.0f;
                this.scaleT = Math.min(1.0f, ((float) (SystemClock.elapsedRealtime() - this.start)) / 400.0f);
                if (z2) {
                    updateHeight();
                }
            }
        }

        public int innerHeight() {
            return (int) (AndroidUtilities.lerp(this.fromTextView.getMeasuredHeight(), this.toTextView.getMeasuredHeight(), this.loadingT) * this.scaleT);
        }

        public int height() {
            return getPaddingTop() + innerHeight() + getPaddingBottom();
        }

        private void updateHeight() {
            ViewParent parent = getParent();
            boolean z = parent instanceof TextBlocksLayout;
            if (z) {
                if (z) {
                    ((TextBlocksLayout) parent).updateHeight();
                    return;
                }
                return;
            }
            int height = height();
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, height);
            } else {
                r2 = layoutParams.height != height;
                layoutParams.height = height;
            }
            if (r2) {
                setLayoutParams(layoutParams);
            }
        }

        public void loaded(CharSequence charSequence, final Runnable runnable) {
            this.loaded = true;
            this.toTextView.setText(charSequence);
            layout();
            if (this.loadingAnimator.isRunning()) {
                this.loadingAnimator.cancel();
            }
            if (this.loadedAnimator == null) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.loadedAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.iMe.fork.ui.dialog.TranslateAlert$LoadingTextView2$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        TranslateAlert.LoadingTextView2.this.lambda$loaded$1(valueAnimator);
                    }
                });
                this.loadedAnimator.addListener(new AnimatorListenerAdapter(this) { // from class: com.iMe.fork.ui.dialog.TranslateAlert.LoadingTextView2.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                });
                this.loadedAnimator.setDuration(350L);
                this.loadedAnimator.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                this.loadedAnimator.start();
            }
        }

        public /* synthetic */ void lambda$loaded$1(ValueAnimator valueAnimator) {
            this.loadingT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            updateHeight();
            invalidate();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            if (this.fromTextView.getMeasuredWidth() <= 0 || this.lastWidth != paddingLeft) {
                measureChild(this.fromTextView, paddingLeft);
                updateLoadingPath();
            }
            if (this.toTextView.getMeasuredWidth() <= 0 || this.lastWidth != paddingLeft) {
                measureChild(this.toTextView, paddingLeft);
            }
            this.lastWidth = paddingLeft;
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(height(), 1073741824));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            layout(((i3 - i) - getPaddingLeft()) - getPaddingRight(), true);
        }

        private void layout(int i, boolean z) {
            if (this.lastWidth != i || z) {
                this.lastWidth = i;
                layout(i);
            }
        }

        private void layout(int i) {
            measureChild(this.fromTextView, i);
            layoutChild(this.fromTextView, i);
            updateLoadingPath();
            measureChild(this.toTextView, i);
            layoutChild(this.toTextView, i);
            updateHeight();
        }

        private void layout() {
            layout(this.lastWidth);
        }

        private void measureChild(View view, int i) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), TranslateAlert.MOST_SPEC);
        }

        private void layoutChild(View view, int i) {
            view.layout(getPaddingLeft(), getPaddingTop(), getPaddingLeft() + i, getPaddingTop() + view.getMeasuredHeight());
        }

        private void updateLoadingPath() {
            boolean z;
            TextView textView = this.fromTextView;
            if (textView == null || textView.getMeasuredWidth() <= 0) {
                return;
            }
            this.loadingPath.reset();
            Layout layout = this.fromTextView.getLayout();
            if (layout != null) {
                CharSequence text = layout.getText();
                int lineCount = layout.getLineCount();
                for (int i = 0; i < lineCount; i++) {
                    float lineLeft = layout.getLineLeft(i);
                    float lineRight = layout.getLineRight(i);
                    float min = Math.min(lineLeft, lineRight);
                    float max = Math.max(lineLeft, lineRight);
                    int lineStart = layout.getLineStart(i);
                    int lineEnd = layout.getLineEnd(i);
                    while (true) {
                        if (lineStart >= lineEnd) {
                            z = false;
                            break;
                        }
                        char charAt = text.charAt(lineStart);
                        if (charAt != '\n' && charAt != '\t' && charAt != ' ') {
                            z = true;
                            break;
                        }
                        lineStart++;
                    }
                    if (z) {
                        RectF rectF = this.fetchedPathRect;
                        int i2 = paddingHorizontal;
                        int lineTop = layout.getLineTop(i);
                        int i3 = paddingVertical;
                        rectF.set(min - i2, lineTop - i3, max + i2, layout.getLineBottom(i) + i3);
                        this.loadingPath.addRoundRect(this.fetchedPathRect, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), Path.Direction.CW);
                    }
                }
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float width = getWidth();
            float height = getHeight();
            float max = LocaleController.isRTL ? Math.max(width / 2.0f, width - 8.0f) : Math.min(width / 2.0f, 8.0f);
            float min = Math.min(height / 2.0f, 8.0f);
            float f = max * max;
            float f2 = min * min;
            float f3 = width - max;
            float f4 = f3 * f3;
            float f5 = height - min;
            float f6 = f5 * f5;
            float sqrt = this.loadingT * ((float) Math.sqrt(Math.max(Math.max(f + f2, f2 + f4), Math.max(f + f6, f4 + f6))));
            this.inPath.reset();
            this.inPath.addCircle(max, min, sqrt, Path.Direction.CW);
            canvas.save();
            canvas.clipPath(this.inPath, Region.Op.DIFFERENCE);
            this.loadingPaint.setAlpha((int) ((1.0f - this.loadingT) * 255.0f));
            float f7 = this.gradientWidth;
            float f8 = this.gradientWidth;
            float elapsedRealtime = f7 - (((((float) (SystemClock.elapsedRealtime() - this.start)) / 1000.0f) * f8) % f8);
            this.shadePath.reset();
            this.shadePath.addRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height, Path.Direction.CW);
            int i = paddingHorizontal;
            int i2 = paddingVertical;
            canvas.translate(i, i2);
            canvas.clipPath(this.loadingPath);
            canvas.translate(-i, -i2);
            canvas.translate(-elapsedRealtime, BitmapDescriptorFactory.HUE_RED);
            this.shadePath.offset(elapsedRealtime, BitmapDescriptorFactory.HUE_RED, this.tempPath);
            canvas.drawPath(this.tempPath, this.loadingPaint);
            canvas.translate(elapsedRealtime, BitmapDescriptorFactory.HUE_RED);
            canvas.restore();
            if (this.showLoadingText && this.fromTextView != null) {
                canvas.save();
                this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height);
                canvas.clipPath(this.inPath, Region.Op.DIFFERENCE);
                canvas.translate(i, i2);
                canvas.saveLayerAlpha(this.rect, 20, 31);
                this.fromTextView.draw(canvas);
                canvas.restore();
                canvas.restore();
            }
            if (this.toTextView != null) {
                canvas.save();
                canvas.clipPath(this.inPath);
                canvas.translate(i, i2);
                canvas.saveLayerAlpha(this.rect, (int) (this.loadingT * 255.0f), 31);
                this.toTextView.draw(canvas);
                if (this.loadingT < 1.0f) {
                    canvas.restore();
                }
                canvas.restore();
            }
        }
    }
}
