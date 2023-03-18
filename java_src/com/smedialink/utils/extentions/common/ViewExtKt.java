package com.smedialink.utils.extentions.common;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Vibrator;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.KeyEvent;
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
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.utils.common.DigitsInputFilter;
import com.smedialink.utils.helper.binancepay.BinancePayHelper;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.text.StringsKt;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.ActionBar.Theme;
import timber.log.Timber;
/* compiled from: ViewExt.kt */
/* loaded from: classes3.dex */
public final class ViewExtKt {
    public static final void setVerticalPadding(View view, Number verticalPadding) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(verticalPadding, "verticalPadding");
        view.setPadding(view.getPaddingLeft(), AndroidUtilities.m51dp(verticalPadding.floatValue()), view.getPaddingRight(), AndroidUtilities.m51dp(verticalPadding.floatValue()));
    }

    public static final void setHorizontalPadding(View view, Number horizontalPadding) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(horizontalPadding, "horizontalPadding");
        view.setPadding(AndroidUtilities.m51dp(horizontalPadding.floatValue()), view.getPaddingTop(), AndroidUtilities.m51dp(horizontalPadding.floatValue()), view.getPaddingBottom());
    }

    public static final void loadImage(ImageView imageView, SelectableToken token) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(token, "token");
        if (token instanceof SelectableToken.WithLogoUrl.Binance) {
            loadImage(imageView, ((SelectableToken.WithLogoUrl.Binance) token).getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader());
        } else if (token instanceof SelectableToken.WithResLogo) {
            imageView.setImageResource(((SelectableToken.WithResLogo) token).getLogoRes());
        }
    }

    public static final void loadImage(ImageView imageView, String url, final Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Glide.with(imageView).load(new GlideUrl(url, new Headers() { // from class: com.smedialink.utils.extentions.common.ViewExtKt$$ExternalSyntheticLambda3
            @Override // com.bumptech.glide.load.model.Headers
            public final Map getHeaders() {
                Map checkNotNullParameter;
                checkNotNullParameter = Intrinsics.checkNotNullParameter(headers, "$headers");
                return checkNotNullParameter;
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

    public static final void setRightDrawableOnClickListener(final TextView textView, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: com.smedialink.utils.extentions.common.ViewExtKt$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean rightDrawableOnClickListener$lambda$2;
                rightDrawableOnClickListener$lambda$2 = ViewExtKt.setRightDrawableOnClickListener$lambda$2(textView, action, view, motionEvent);
                return rightDrawableOnClickListener$lambda$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setRightDrawableOnClickListener$lambda$2(TextView this_setRightDrawableOnClickListener, Function0 action, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this_setRightDrawableOnClickListener, "$this_setRightDrawableOnClickListener");
        Intrinsics.checkNotNullParameter(action, "$action");
        if (motionEvent.getAction() != 1 || motionEvent.getRawX() < this_setRightDrawableOnClickListener.getRight() - this_setRightDrawableOnClickListener.getCompoundDrawables()[2].getBounds().width()) {
            return false;
        }
        action.invoke();
        return true;
    }

    public static final void setRightDrawableOnClickListener(TextView textView, Runnable action) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        setRightDrawableOnClickListener(textView, new ViewExtKt$setRightDrawableOnClickListener$2(action));
    }

    public static final void visible(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(0);
    }

    public static final void gone(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(8);
    }

    public static final void invisible(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(4);
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
        view.setBackground(Theme.createSelectorDrawable(Theme.getColor("player_actionBarSelector"), 1));
    }

    public static final void setBoundedCircleRippleBackground(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setBackground(Theme.createSelectorDrawable(Theme.getColor("player_actionBarSelector"), 5));
    }

    public static final void setAutoSizedCircleRippleBackground(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setBackground(Theme.createSelectorDrawable(Theme.getColor("player_actionBarSelector"), 5));
    }

    public static /* synthetic */ void setRippleForeground$default(View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        setRippleForeground(view, z);
    }

    public static final void setRippleForeground(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (Build.VERSION.SDK_INT >= 23) {
            view.setForeground(Theme.getSelectorDrawable(z));
        }
    }

    public static final void setImageColor(ImageView imageView, int i) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        imageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
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
        view.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.utils.extentions.common.ViewExtKt$$ExternalSyntheticLambda0
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

    public static final void tintIndeterminateProgress(ProgressBar progressBar, int i) {
        Intrinsics.checkNotNullParameter(progressBar, "<this>");
        progressBar.setIndeterminateTintList(ColorStateList.valueOf(i));
    }

    public static final void setSubstringClickListener(TextView textView, String subString, final Callbacks$Callback handler) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(subString, "subString");
        Intrinsics.checkNotNullParameter(handler, "handler");
        try {
            CharSequence text = textView.getText();
            Intrinsics.checkNotNullExpressionValue(text, "text");
            int indexOf$default = StringsKt.indexOf$default(text, subString, 0, false, 6, (Object) null);
            if (indexOf$default != -1) {
                SpannableString spannableString = new SpannableString(textView.getText());
                spannableString.setSpan(new ClickableSpan() { // from class: com.smedialink.utils.extentions.common.ViewExtKt$setSubstringClickListener$clickSpan$1
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View widget) {
                        Intrinsics.checkNotNullParameter(widget, "widget");
                        Callbacks$Callback.this.invoke();
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint ds) {
                        Intrinsics.checkNotNullParameter(ds, "ds");
                        ds.linkColor = Theme.getColor("chats_actionBackground");
                        super.updateDrawState(ds);
                    }
                }, indexOf$default, subString.length() + indexOf$default, 33);
                textView.setLinksClickable(true);
                textView.setClickable(true);
                textView.setMovementMethod(LinkMovementMethod.getInstance());
                textView.setText(spannableString);
            }
        } catch (Exception unused) {
        }
    }

    public static final void onAction(EditText editText, final int i, final Callbacks$Callback runAction) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Intrinsics.checkNotNullParameter(runAction, "runAction");
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.smedialink.utils.extentions.common.ViewExtKt$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                boolean onAction$lambda$4;
                onAction$lambda$4 = ViewExtKt.onAction$lambda$4(i, runAction, textView, i2, keyEvent);
                return onAction$lambda$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onAction$lambda$4(int i, Callbacks$Callback runAction, TextView textView, int i2, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(runAction, "$runAction");
        if (i2 == i) {
            runAction.invoke();
            return true;
        }
        return false;
    }

    public static final void disable(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setAlpha(0.5f);
        view.setEnabled(false);
    }

    public static final void enable(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setAlpha(1.0f);
        view.setEnabled(true);
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
        int m51dp = AndroidUtilities.m51dp(24.0f);
        viewPager.setPadding(m51dp, 0, m51dp, 0);
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

    public static final void limitInputLength(EditText editText, int i, int i2) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        editText.setFilters(new DigitsInputFilter[]{new DigitsInputFilter(i, i2, 0.0d, 4, null)});
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
                Timber.m4e(e);
            }
        }
    }

    public static /* synthetic */ void setGreyShadowBackground$default(View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        setGreyShadowBackground(view, z);
    }

    public static final void setGreyShadowBackground(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setBackground(Theme.getThemedDrawable(view.getContext(), z ? C3286R.C3288drawable.greydivider_bottom : C3286R.C3288drawable.greydivider_top, "windowBackgroundGrayShadow"));
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

    public static final void setMargins(View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMargins(i, i2, i3, i4);
        view.setLayoutParams(marginLayoutParams);
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

    public static final void setTextsColor(String key, TextView... textViews) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(textViews, "textViews");
        for (TextView textView : textViews) {
            textView.setTextColor(Theme.getColor(key));
        }
    }
}
