package com.iMe.utils.extentions.common;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Vibrator;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.Headers;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.common.DigitsInputFilter;
import com.iMe.utils.helper.binancepay.BinancePayHelper;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.text.StringsKt__StringsKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.TypefaceSpan;
import timber.log.Timber;
/* compiled from: ViewExt.kt */
/* loaded from: classes4.dex */
public final class ViewExtKt {
    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException
        	at jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(RegisterArg.java:173)
        	at jadx.core.dex.instructions.args.InsnArg.isSameVar(InsnArg.java:269)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:118)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static final java.util.Map loadImage$lambda$0(java.util.Map r1) {
        /*
            java.lang.String r0 = "$headers"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.utils.extentions.common.ViewExtKt.loadImage$lambda$0(java.util.Map):java.util.Map");
    }

    public static final int getDpToPx(int i) {
        return getDpToPx(i);
    }

    public static final int getDpToPx(float f) {
        return AndroidUtilities.m105dp(f);
    }

    public static /* synthetic */ View inflate$default(ViewGroup viewGroup, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return inflate(viewGroup, i, z);
    }

    public static final View inflate(ViewGroup viewGroup, int i, boolean z) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, z);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(context).inflate(la…tRes, this, attachToRoot)");
        return inflate;
    }

    public static final void setVerticalPadding(View view, Number verticalPadding) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(verticalPadding, "verticalPadding");
        view.setPadding(view.getPaddingLeft(), AndroidUtilities.m105dp(verticalPadding.floatValue()), view.getPaddingRight(), AndroidUtilities.m105dp(verticalPadding.floatValue()));
    }

    public static final void setHorizontalPadding(View view, Number horizontalPadding) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(horizontalPadding, "horizontalPadding");
        view.setPadding(AndroidUtilities.m105dp(horizontalPadding.floatValue()), view.getPaddingTop(), AndroidUtilities.m105dp(horizontalPadding.floatValue()), view.getPaddingBottom());
    }

    public static final void loadImage(ImageView imageView, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(token, "token");
        loadImage(imageView, token.getAvatarUrl(), BinancePayHelper.INSTANCE.getRefererHeader());
    }

    public static final void loadImage(ImageView imageView, String url, final Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Glide.with(imageView).load(new GlideUrl(url, new Headers() { // from class: com.iMe.utils.extentions.common.ViewExtKt$$ExternalSyntheticLambda3
            @Override // com.bumptech.glide.load.model.Headers
            public final Map getHeaders() {
                return ViewExtKt.loadImage$lambda$0(headers);
            }
        })).dontAnimate().centerCrop().circleCrop().placeholder(imageView.getDrawable()).diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView);
    }

    public static final void setCompoundDrawablesColor(TextView textView, int i) {
        List<Drawable> filterNotNull;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        Intrinsics.checkNotNullExpressionValue(compoundDrawables, "compoundDrawables");
        filterNotNull = ArraysKt___ArraysKt.filterNotNull(compoundDrawables);
        for (Drawable drawable : filterNotNull) {
            drawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
        }
    }

    public static /* synthetic */ void visible$default(View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        visible(view, z);
    }

    public static /* synthetic */ void gone$default(View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        gone(view, z);
    }

    public static final void gone(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(z ? 8 : 0);
    }

    public static /* synthetic */ void invisible$default(View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        invisible(view, z);
    }

    public static final void invisible(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(z ? 4 : 0);
    }

    public static /* synthetic */ void setRippleBackground$default(View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        setRippleBackground(view, z);
    }

    public static final void setRippleBackground(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setBackground(Theme.getSelectorDrawable(z));
    }

    public static final void setCircleRippleBackground(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_player_actionBarSelector), 1));
    }

    public static final void setBoundedCircleRippleBackground(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_player_actionBarSelector), 3));
    }

    public static final void setAutoSizedCircleRippleBackground(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_player_actionBarSelector), 5));
    }

    public static /* synthetic */ void setRippleForeground$default(View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        setRippleForeground(view, z);
    }

    public static final void setRippleForeground(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setForeground(Theme.getSelectorDrawable(z));
    }

    public static /* synthetic */ void safeThrottledClick$default(View view, long j, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 500;
        }
        safeThrottledClick(view, j, function1);
    }

    public static final void safeThrottledClick(View view, final long j, final Function1<? super View, Unit> listener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final Ref$LongRef ref$LongRef = new Ref$LongRef();
        view.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.utils.extentions.common.ViewExtKt$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ViewExtKt.safeThrottledClick$lambda$3(Ref$LongRef.this, j, listener, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void safeThrottledClick$lambda$3(Ref$LongRef lastClickTime, long j, Function1 listener, View view) {
        Intrinsics.checkNotNullParameter(lastClickTime, "$lastClickTime");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        if (System.currentTimeMillis() > lastClickTime.element + j) {
            Intrinsics.checkNotNullExpressionValue(view, "view");
            listener.invoke(view);
            lastClickTime.element = System.currentTimeMillis();
        }
    }

    public static final void setMixedClickListener(final View view, final Callbacks$Callback1<View> listener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        safeThrottledClick$default(view, 0L, new Function1<View, Unit>() { // from class: com.iMe.utils.extentions.common.ViewExtKt$setMixedClickListener$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view2) {
                invoke2(view2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View view2) {
                Intrinsics.checkNotNullParameter(view2, "view");
                listener.invoke(view2);
            }
        }, 1, null);
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.iMe.utils.extentions.common.ViewExtKt$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean mixedClickListener$lambda$4;
                mixedClickListener$lambda$4 = ViewExtKt.setMixedClickListener$lambda$4(Ref$BooleanRef.this, view, view2, motionEvent);
                return mixedClickListener$lambda$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setMixedClickListener$lambda$4(Ref$BooleanRef isPressedDown, View this_setMixedClickListener, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(isPressedDown, "$isPressedDown");
        Intrinsics.checkNotNullParameter(this_setMixedClickListener, "$this_setMixedClickListener");
        int action = motionEvent.getAction();
        if (action == 0) {
            isPressedDown.element = true;
        } else if (action == 1) {
            if (isPressedDown.element) {
                this_setMixedClickListener.performClick();
            }
            isPressedDown.element = false;
        }
        return false;
    }

    public static final void tintIndeterminateProgress(ProgressBar progressBar, int i) {
        Intrinsics.checkNotNullParameter(progressBar, "<this>");
        progressBar.setIndeterminateTintList(ColorStateList.valueOf(i));
    }

    public static /* synthetic */ void setSubstringClickListener$default(TextView textView, String str, boolean z, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        setSubstringClickListener(textView, str, z, callbacks$Callback);
    }

    public static final void setSubstringClickListener(TextView textView, String subString, boolean z, final Callbacks$Callback handler) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(subString, "subString");
        Intrinsics.checkNotNullParameter(handler, "handler");
        try {
            CharSequence text = textView.getText();
            Intrinsics.checkNotNullExpressionValue(text, "text");
            indexOf$default = StringsKt__StringsKt.indexOf$default(text, subString, 0, false, 6, (Object) null);
            if (indexOf$default != -1) {
                int length = subString.length() + indexOf$default;
                SpannableString spannableString = new SpannableString(textView.getText());
                textView.setHighlightColor(0);
                spannableString.setSpan(new ClickableSpan() { // from class: com.iMe.utils.extentions.common.ViewExtKt$setSubstringClickListener$clickSpan$1
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View widget) {
                        Intrinsics.checkNotNullParameter(widget, "widget");
                        Callbacks$Callback.this.invoke();
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint ds) {
                        Intrinsics.checkNotNullParameter(ds, "ds");
                        ds.linkColor = Theme.getColor(Theme.key_chats_actionBackground);
                        super.updateDrawState(ds);
                    }
                }, indexOf$default, length, 33);
                if (z) {
                    spannableString.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), indexOf$default, length, 33);
                }
                textView.setLinksClickable(true);
                textView.setClickable(true);
                textView.setMovementMethod(LinkMovementMethod.getInstance());
                textView.setText(spannableString);
            }
        } catch (Exception unused) {
        }
    }

    public static final void showKeyboard(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.requestFocus();
        AndroidUtilities.showKeyboard(view);
    }

    public static final void onAction(EditText editText, final int i, final Callbacks$Callback runAction) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Intrinsics.checkNotNullParameter(runAction, "runAction");
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.iMe.utils.extentions.common.ViewExtKt$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                boolean onAction$lambda$5;
                onAction$lambda$5 = ViewExtKt.onAction$lambda$5(i, runAction, textView, i2, keyEvent);
                return onAction$lambda$5;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onAction$lambda$5(int i, Callbacks$Callback runAction, TextView textView, int i2, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(runAction, "$runAction");
        if (i2 == i) {
            runAction.invoke();
            return true;
        }
        return false;
    }

    public static final void setEnabledWithAlpha(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setAlpha(z ? 1.0f : 0.5f);
        view.setEnabled(z);
    }

    public static final void visible(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(z ? 0 : 8);
    }

    public static final void disable(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        setEnabledWithAlpha(view, false);
    }

    public static final void nextPage(ViewPager viewPager) {
        Intrinsics.checkNotNullParameter(viewPager, "<this>");
        PagerAdapter adapter = viewPager.getAdapter();
        if ((adapter != null ? adapter.getCount() : 0) > viewPager.getCurrentItem()) {
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public static final void clearText(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.setText("");
    }

    public static /* synthetic */ void shake$default(View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        shake(view, z);
    }

    public static final void shake(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        AndroidUtilities.shakeView(view);
        if (z) {
            Object systemService = view.getContext().getSystemService("vibrator");
            Vibrator vibrator = systemService instanceof Vibrator ? (Vibrator) systemService : null;
            if (vibrator != null) {
                vibrator.vibrate(200L);
            }
        }
    }

    public static final int withAlpha(int i, float f) {
        return withAlpha(i, (int) (255 * f));
    }

    public static final int withAlpha(int i, int i2) {
        return ColorUtils.setAlphaComponent(i, i2);
    }

    public static final void applyDefaultProperties(ViewPager viewPager) {
        Intrinsics.checkNotNullParameter(viewPager, "<this>");
        viewPager.setOffscreenPageLimit(3);
        viewPager.setClipToPadding(false);
        int m105dp = AndroidUtilities.m105dp(24.0f);
        viewPager.setPadding(m105dp, 0, m105dp, 0);
    }

    public static final void withMediumTypeface(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
    }

    public static final void withMonoTypeface(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
    }

    public static final void singleLine(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.setSingleLine(true);
        textView.setMaxLines(1);
        textView.setLines(1);
    }

    public static /* synthetic */ void limitInputLength$default(EditText editText, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 15;
        }
        limitInputLength(editText, i, i2);
    }

    public static final void limitInputLength(EditText editText, int i, int i2) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        editText.setFilters(new DigitsInputFilter[]{new DigitsInputFilter(i2, i, 0.0d, 4, null)});
    }

    public static /* synthetic */ void setMargins$default(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            i = marginLayoutParams != null ? marginLayoutParams.leftMargin : 0;
        }
        if ((i5 & 2) != 0) {
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            i2 = marginLayoutParams2 != null ? marginLayoutParams2.topMargin : 0;
        }
        if ((i5 & 4) != 0) {
            ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
            i3 = marginLayoutParams3 != null ? marginLayoutParams3.rightMargin : 0;
        }
        if ((i5 & 8) != 0) {
            ViewGroup.LayoutParams layoutParams4 = view.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams4 : null;
            i4 = marginLayoutParams4 != null ? marginLayoutParams4.bottomMargin : 0;
        }
        setMargins(view, i, i2, i3, i4);
    }

    public static final void setAllowDecimals(EditText editText, boolean z) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        editText.setInputType(z ? 8194 : 2);
    }

    public static final void setSelectionEnd(EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        editText.setSelection(editText.length());
    }

    public static final void removeSelfFromParent(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            try {
                viewGroup.removeViewInLayout(view);
            } catch (Exception e) {
                Timber.m6e(e);
            }
        }
    }

    public static final void setScale(View view, float f) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setScaleX(f);
        view.setScaleY(f);
    }

    public static final ViewPropertyAnimator scale(ViewPropertyAnimator viewPropertyAnimator, float f) {
        Intrinsics.checkNotNullParameter(viewPropertyAnimator, "<this>");
        ViewPropertyAnimator scaleY = viewPropertyAnimator.scaleX(f).scaleY(f);
        Intrinsics.checkNotNullExpressionValue(scaleY, "scaleX(value).scaleY(value)");
        return scaleY;
    }

    public static final void setTextsColorKey(int i, TextView... textViews) {
        Intrinsics.checkNotNullParameter(textViews, "textViews");
        setTextsColor(Theme.getColor(i), (TextView[]) Arrays.copyOf(textViews, textViews.length));
    }

    public static final void setMargins(View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMargins(i, i2, i3, i4);
        view.setLayoutParams(marginLayoutParams);
    }

    public static final void setTextsColor(int i, TextView... textViews) {
        Intrinsics.checkNotNullParameter(textViews, "textViews");
        for (TextView textView : textViews) {
            textView.setTextColor(i);
        }
    }
}
