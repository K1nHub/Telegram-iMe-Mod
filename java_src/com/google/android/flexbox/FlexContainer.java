package com.google.android.flexbox;

import android.view.View;
import java.util.List;
/* loaded from: classes.dex */
interface FlexContainer {
    int getAlignContent();

    int getAlignItems();

    int getChildHeightMeasureSpec(int heightSpec, int padding, int childDimension);

    int getChildWidthMeasureSpec(int widthSpec, int padding, int childDimension);

    int getDecorationLengthCrossAxis(View view);

    int getDecorationLengthMainAxis(View view, int index, int indexInFlexLine);

    int getFlexDirection();

    View getFlexItemAt(int index);

    int getFlexItemCount();

    List<FlexLine> getFlexLinesInternal();

    int getFlexWrap();

    int getLargestMainSize();

    int getMaxLine();

    int getPaddingBottom();

    int getPaddingEnd();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingStart();

    int getPaddingTop();

    View getReorderedFlexItemAt(int index);

    int getSumOfCrossSize();

    boolean isMainAxisDirectionHorizontal();

    void onNewFlexItemAdded(View view, int index, int indexInFlexLine, FlexLine flexLine);

    void onNewFlexLineAdded(FlexLine flexLine);

    void setFlexLines(List<FlexLine> flexLines);

    void updateViewCache(int position, View view);
}
