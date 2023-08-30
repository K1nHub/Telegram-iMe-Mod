package org.telegram.p043ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.view.ViewGroup;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Paint.Views.EntityView;
import org.telegram.p043ui.Components.Point;
import org.telegram.p043ui.Components.Rect;
import org.telegram.tgnet.TLRPC$GeoPoint;
import org.telegram.tgnet.TLRPC$MediaArea;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$TL_messageMediaGeo;
import org.telegram.tgnet.TLRPC$TL_messageMediaVenue;
/* renamed from: org.telegram.ui.Components.Paint.Views.LocationView */
/* loaded from: classes6.dex */
public class LocationView extends EntityView {
    private int currentColor;
    private int currentType;
    public TLRPC$MessageMedia location;
    public final LocationMarker marker;
    public TLRPC$MediaArea mediaArea;

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getMaxScale() {
        return 1.5f;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getStickyPaddingLeft() {
        return this.marker.padx;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getStickyPaddingTop() {
        return this.marker.pady;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getStickyPaddingRight() {
        return this.marker.padx;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getStickyPaddingBottom() {
        return this.marker.pady;
    }

    private static String deg(double d) {
        double floor;
        double abs = Math.abs(d);
        double floor2 = Math.floor((abs - Math.floor(abs)) * 60.0d);
        StringBuilder sb = new StringBuilder();
        sb.append("" + ((int) floor) + "°");
        sb.append(floor2 <= 0.0d ? SessionDescription.SUPPORTED_SDP_VERSION : "");
        sb.append(floor2 < 10.0d ? SessionDescription.SUPPORTED_SDP_VERSION : "");
        sb.append((int) floor2);
        sb.append("'");
        String sb2 = sb.toString();
        double floor3 = Math.floor(Math.floor(floor2) * 60.0d);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        sb3.append(floor3 <= 0.0d ? SessionDescription.SUPPORTED_SDP_VERSION : "");
        sb3.append(floor3 < 10.0d ? SessionDescription.SUPPORTED_SDP_VERSION : "");
        sb3.append((int) floor3);
        sb3.append("\"");
        return sb3.toString();
    }

    public static String geo(double d, double d2) {
        StringBuilder sb = new StringBuilder();
        sb.append(deg(d));
        sb.append(d > 0.0d ? "N" : "S");
        sb.append(" ");
        sb.append(deg(d2));
        sb.append(d2 > 0.0d ? "E" : "W");
        return sb.toString();
    }

    public LocationView(Context context, Point point, int i, TLRPC$MessageMedia tLRPC$MessageMedia, TLRPC$MediaArea tLRPC$MediaArea, float f, int i2, int i3, int i4) {
        super(context, point);
        LocationMarker locationMarker = new LocationMarker(context, f);
        this.marker = locationMarker;
        locationMarker.setMaxWidth(i2);
        setLocation(i, tLRPC$MessageMedia, tLRPC$MediaArea);
        this.currentType = i3;
        this.currentColor = i4;
        locationMarker.setType(i3, i4);
        addView(locationMarker, LayoutHelper.createFrame(-2, -2, 51));
        setClipChildren(false);
        setClipToPadding(false);
        updatePosition();
    }

    public void setLocation(int i, TLRPC$MessageMedia tLRPC$MessageMedia, TLRPC$MediaArea tLRPC$MediaArea) {
        String str;
        this.location = tLRPC$MessageMedia;
        this.mediaArea = tLRPC$MediaArea;
        String str2 = null;
        if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaGeo) {
            TLRPC$GeoPoint tLRPC$GeoPoint = tLRPC$MessageMedia.geo;
            str = geo(tLRPC$GeoPoint.lat, tLRPC$GeoPoint._long);
        } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaVenue) {
            String upperCase = tLRPC$MessageMedia.title.toUpperCase();
            str2 = ((TLRPC$TL_messageMediaVenue) tLRPC$MessageMedia).emoji;
            str = upperCase;
        } else {
            str = "";
        }
        this.marker.setCountryCodeEmoji(i, str2);
        this.marker.setText(str);
        updateSelectionView();
    }

    public void setMaxWidth(int i) {
        this.marker.setMaxWidth(i);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updatePosition();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updatePosition();
    }

    public void setType(int i) {
        LocationMarker locationMarker = this.marker;
        this.currentType = i;
        locationMarker.setType(i, this.currentColor);
    }

    public void setType(int i, int i2) {
        LocationMarker locationMarker = this.marker;
        this.currentType = i;
        this.currentColor = i2;
        locationMarker.setType(i, i2);
    }

    public void setColor(int i) {
        setType(this.currentType, i);
    }

    public int getColor() {
        return this.currentColor;
    }

    public int getType() {
        return this.currentType;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected Rect getSelectionBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return new Rect();
        }
        float scaleX = viewGroup.getScaleX();
        float measuredWidth = (getMeasuredWidth() * getScale()) + (AndroidUtilities.m72dp(64) / scaleX);
        float measuredHeight = (getMeasuredHeight() * getScale()) + (AndroidUtilities.m72dp(64) / scaleX);
        float positionX = (getPositionX() - (measuredWidth / 2.0f)) * scaleX;
        return new Rect(positionX, (getPositionY() - (measuredHeight / 2.0f)) * scaleX, ((measuredWidth * scaleX) + positionX) - positionX, measuredHeight * scaleX);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    public TextViewSelectionView createSelectionView() {
        return new TextViewSelectionView(this, getContext());
    }

    /* renamed from: org.telegram.ui.Components.Paint.Views.LocationView$TextViewSelectionView */
    /* loaded from: classes6.dex */
    public class TextViewSelectionView extends EntityView.SelectionView {
        private final Paint clearPaint;
        private Path path;

        public TextViewSelectionView(LocationView locationView, Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.clearPaint = paint;
            this.path = new Path();
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }

        @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.SelectionView
        protected int pointInsideHandle(float f, float f2) {
            float m73dp = AndroidUtilities.m73dp(19.5f);
            float m73dp2 = AndroidUtilities.m73dp(1.0f) + m73dp;
            float f3 = m73dp2 * 2.0f;
            float measuredWidth = getMeasuredWidth() - f3;
            float measuredHeight = ((getMeasuredHeight() - f3) / 2.0f) + m73dp2;
            if (f <= m73dp2 - m73dp || f2 <= measuredHeight - m73dp || f >= m73dp2 + m73dp || f2 >= measuredHeight + m73dp) {
                float f4 = m73dp2 + measuredWidth;
                return (f <= f4 - m73dp || f2 <= measuredHeight - m73dp || f >= f4 + m73dp || f2 >= measuredHeight + m73dp) ? 0 : 2;
            }
            return 1;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int saveCount = canvas.getSaveCount();
            float showAlpha = getShowAlpha();
            if (showAlpha <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            if (showAlpha < 1.0f) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (showAlpha * 255.0f), 31);
            }
            float dpf2 = AndroidUtilities.dpf2(5.66f);
            float m73dp = AndroidUtilities.m73dp(2.0f) + dpf2 + AndroidUtilities.m72dp(15);
            float f = m73dp * 2.0f;
            float measuredWidth = getMeasuredWidth() - f;
            float measuredHeight = getMeasuredHeight() - f;
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = m73dp + measuredWidth;
            float f3 = m73dp + measuredHeight;
            rectF.set(m73dp, m73dp, f2, f3);
            float m72dp = AndroidUtilities.m72dp(12);
            float min = Math.min(m72dp, measuredWidth / 2.0f);
            float f4 = measuredHeight / 2.0f;
            float min2 = Math.min(m72dp, f4);
            this.path.rewind();
            float f5 = min * 2.0f;
            float f6 = m73dp + f5;
            float f7 = 2.0f * min2;
            float f8 = m73dp + f7;
            rectF.set(m73dp, m73dp, f6, f8);
            this.path.arcTo(rectF, 180.0f, 90.0f);
            float f9 = f2 - f5;
            rectF.set(f9, m73dp, f2, f8);
            this.path.arcTo(rectF, 270.0f, 90.0f);
            canvas.drawPath(this.path, this.paint);
            this.path.rewind();
            float f10 = f3 - f7;
            rectF.set(m73dp, f10, f6, f3);
            this.path.arcTo(rectF, 180.0f, -90.0f);
            rectF.set(f9, f10, f2, f3);
            this.path.arcTo(rectF, 90.0f, -90.0f);
            canvas.drawPath(this.path, this.paint);
            float f11 = m73dp + f4;
            canvas.drawCircle(m73dp, f11, dpf2, this.dotStrokePaint);
            canvas.drawCircle(m73dp, f11, (dpf2 - AndroidUtilities.m72dp(1)) + 1.0f, this.dotPaint);
            canvas.drawCircle(f2, f11, dpf2, this.dotStrokePaint);
            canvas.drawCircle(f2, f11, (dpf2 - AndroidUtilities.m72dp(1)) + 1.0f, this.dotPaint);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            float f12 = m73dp + min2;
            float f13 = f3 - min2;
            canvas.drawLine(m73dp, f12, m73dp, f13, this.paint);
            canvas.drawLine(f2, f12, f2, f13, this.paint);
            canvas.drawCircle(f2, f11, (AndroidUtilities.m72dp(1) + dpf2) - 1.0f, this.clearPaint);
            canvas.drawCircle(m73dp, f11, (dpf2 + AndroidUtilities.m72dp(1)) - 1.0f, this.clearPaint);
            canvas.restoreToCount(saveCount);
        }
    }
}
