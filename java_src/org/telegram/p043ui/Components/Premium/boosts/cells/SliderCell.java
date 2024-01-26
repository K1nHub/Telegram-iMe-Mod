package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import java.util.List;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.SlideChooseView;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.SliderCell */
/* loaded from: classes6.dex */
public class SliderCell extends FrameLayout {
    protected View backgroundView;
    private final Theme.ResourcesProvider resourcesProvider;
    private final SlideChooseView slideChooseView;

    public SliderCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        View view = new View(context);
        this.backgroundView = view;
        addView(view, LayoutHelper.createLinear(-1, -1));
        this.backgroundView.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
        SlideChooseView slideChooseView = new SlideChooseView(context, resourcesProvider);
        this.slideChooseView = slideChooseView;
        addView(slideChooseView, LayoutHelper.createFrame(-1, -1, 48, 0, 0, 0, 0));
        setBackground(Theme.getThemedDrawableByKey(getContext(), C3632R.C3634drawable.greydivider_top, Theme.key_windowBackgroundGrayShadow));
    }

    public void setCallBack(SlideChooseView.Callback callback) {
        this.slideChooseView.setCallback(callback);
    }

    public void setValues(List<Integer> list, int i) {
        String[] strArr = new String[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            strArr[i2] = String.valueOf(list.get(i2));
        }
        this.slideChooseView.setOptions(i, strArr);
    }
}
