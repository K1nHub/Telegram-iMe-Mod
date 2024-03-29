package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
/* renamed from: org.telegram.ui.Components.SearchField */
/* loaded from: classes6.dex */
public class SearchField extends FrameLayout {
    private ImageView clearSearchImageView;
    private CloseProgressDrawable2 progressDrawable;
    private final Theme.ResourcesProvider resourcesProvider;
    private View searchBackground;
    private EditTextBoldCursor searchEditText;
    private ImageView searchIconImageView;

    protected void onFieldTouchUp(EditTextBoldCursor editTextBoldCursor) {
    }

    public void onTextChange(String str) {
    }

    public void processTouchEvent(MotionEvent motionEvent) {
    }

    public SearchField(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, z, 14.0f, resourcesProvider);
    }

    public SearchField(Context context, boolean z, float f, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        FrameLayout.LayoutParams createFrame;
        FrameLayout.LayoutParams createFrame2;
        FrameLayout.LayoutParams createFrame3;
        FrameLayout.LayoutParams createFrame4;
        this.resourcesProvider = resourcesProvider;
        View view = new View(context);
        this.searchBackground = view;
        view.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m107dp(18), getThemedColor(Theme.key_dialogSearchBackground)));
        if (z) {
            createFrame = LayoutHelper.createFrameRelatively(-1.0f, 36.0f, 8388659, f, 11.0f, f, BitmapDescriptorFactory.HUE_RED);
        } else {
            createFrame = LayoutHelper.createFrame(-1, 36.0f, 51, f, 11.0f, f, (float) BitmapDescriptorFactory.HUE_RED);
        }
        addView(this.searchBackground, createFrame);
        ImageView imageView = new ImageView(context);
        this.searchIconImageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.searchIconImageView.setImageResource(C3632R.C3634drawable.smiles_inputsearch);
        this.searchIconImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogSearchIcon), PorterDuff.Mode.MULTIPLY));
        if (z) {
            createFrame2 = LayoutHelper.createFrameRelatively(36.0f, 36.0f, 8388659, f + 2.0f, 11.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        } else {
            createFrame2 = LayoutHelper.createFrame(36, 36.0f, 51, f + 2.0f, 11.0f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED);
        }
        addView(this.searchIconImageView, createFrame2);
        ImageView imageView2 = new ImageView(context);
        this.clearSearchImageView = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView3 = this.clearSearchImageView;
        CloseProgressDrawable2 closeProgressDrawable2 = new CloseProgressDrawable2() { // from class: org.telegram.ui.Components.SearchField.1
            @Override // org.telegram.p043ui.Components.CloseProgressDrawable2
            protected int getCurrentColor() {
                return SearchField.this.getThemedColor(Theme.key_dialogSearchIcon);
            }
        };
        this.progressDrawable = closeProgressDrawable2;
        imageView3.setImageDrawable(closeProgressDrawable2);
        this.progressDrawable.setSide(AndroidUtilities.m107dp(7));
        this.clearSearchImageView.setScaleX(0.1f);
        this.clearSearchImageView.setScaleY(0.1f);
        this.clearSearchImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (z) {
            createFrame3 = LayoutHelper.createFrameRelatively(36.0f, 36.0f, 8388661, f, 11.0f, f, BitmapDescriptorFactory.HUE_RED);
        } else {
            createFrame3 = LayoutHelper.createFrame(36, 36.0f, 53, f, 11.0f, f, (float) BitmapDescriptorFactory.HUE_RED);
        }
        addView(this.clearSearchImageView, createFrame3);
        this.clearSearchImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SearchField$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SearchField.this.lambda$new$0(view2);
            }
        });
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.SearchField.2
            @Override // org.telegram.p043ui.Components.EditTextEffects, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                SearchField.this.processTouchEvent(motionEvent);
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (isEnabled()) {
                    if (motionEvent.getAction() == 1) {
                        SearchField.this.onFieldTouchUp(this);
                    }
                    return super.onTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.searchEditText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 16.0f);
        this.searchEditText.setHintTextColor(getThemedColor(Theme.key_dialogSearchHint));
        this.searchEditText.setTextColor(getThemedColor(Theme.key_dialogSearchText));
        this.searchEditText.setBackgroundDrawable(null);
        this.searchEditText.setPadding(0, 0, 0, 0);
        this.searchEditText.setMaxLines(1);
        this.searchEditText.setLines(1);
        this.searchEditText.setSingleLine(true);
        this.searchEditText.setGravity((z ? LayoutHelper.getAbsoluteGravityStart() : 3) | 16);
        this.searchEditText.setImeOptions(268435459);
        this.searchEditText.setCursorColor(getThemedColor(Theme.key_featuredStickers_addedIcon));
        this.searchEditText.setCursorSize(AndroidUtilities.m107dp(20));
        this.searchEditText.setCursorWidth(1.5f);
        if (z) {
            float f2 = f + 2.0f;
            createFrame4 = LayoutHelper.createFrameRelatively(-1.0f, 40.0f, 8388659, f2 + 38.0f, 9.0f, f2 + 30.0f, BitmapDescriptorFactory.HUE_RED);
        } else {
            float f3 = f + 2.0f;
            createFrame4 = LayoutHelper.createFrame(-1, 40.0f, 51, f3 + 38.0f, 9.0f, f3 + 30.0f, (float) BitmapDescriptorFactory.HUE_RED);
        }
        addView(this.searchEditText, createFrame4);
        this.searchEditText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.SearchField.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                boolean z2 = SearchField.this.searchEditText.length() > 0;
                float alpha = SearchField.this.clearSearchImageView.getAlpha();
                float f4 = BitmapDescriptorFactory.HUE_RED;
                if (z2 != (alpha != BitmapDescriptorFactory.HUE_RED)) {
                    ViewPropertyAnimator animate = SearchField.this.clearSearchImageView.animate();
                    if (z2) {
                        f4 = 1.0f;
                    }
                    animate.alpha(f4).setDuration(150L).scaleX(z2 ? 1.0f : 0.1f).scaleY(z2 ? 1.0f : 0.1f).start();
                }
                SearchField searchField = SearchField.this;
                searchField.onTextChange(searchField.searchEditText.getText().toString());
            }
        });
        this.searchEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.SearchField$$ExternalSyntheticLambda1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean lambda$new$1;
                lambda$new$1 = SearchField.this.lambda$new$1(textView, i, keyEvent);
                return lambda$new$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.searchEditText.setText("");
        AndroidUtilities.showKeyboard(this.searchEditText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(TextView textView, int i, KeyEvent keyEvent) {
        if (keyEvent != null) {
            if ((keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 84) || (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 66)) {
                this.searchEditText.hideActionMode();
                AndroidUtilities.hideKeyboard(this.searchEditText);
                return false;
            }
            return false;
        }
        return false;
    }

    public void setHint(String str) {
        this.searchEditText.setHint(str);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
    }

    public View getSearchBackground() {
        return this.searchBackground;
    }

    public EditTextBoldCursor getSearchEditText() {
        return this.searchEditText;
    }

    public CloseProgressDrawable2 getProgressDrawable() {
        return this.progressDrawable;
    }

    public void getThemeDescriptions(List<ThemeDescription> list) {
        list.add(new ThemeDescription(this.searchBackground, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_dialogSearchBackground));
        ImageView imageView = this.searchIconImageView;
        int i = ThemeDescription.FLAG_IMAGECOLOR;
        int i2 = Theme.key_dialogSearchIcon;
        list.add(new ThemeDescription(imageView, i, null, null, null, null, i2));
        list.add(new ThemeDescription(this.clearSearchImageView, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i2));
        list.add(new ThemeDescription(this.searchEditText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_dialogSearchText));
        list.add(new ThemeDescription(this.searchEditText, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, Theme.key_dialogSearchHint));
        list.add(new ThemeDescription(this.searchEditText, ThemeDescription.FLAG_CURSORCOLOR, null, null, null, null, Theme.key_featuredStickers_addedIcon));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
