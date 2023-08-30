package org.telegram.messenger;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.location.Location;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.util.Consumer;
import java.util.List;
/* loaded from: classes4.dex */
public interface IMapsProvider {
    public static final int MAP_TYPE_HYBRID = 2;
    public static final int MAP_TYPE_NORMAL = 0;
    public static final int MAP_TYPE_SATELLITE = 1;

    /* loaded from: classes4.dex */
    public interface ICallableMethod<R, A> {
        R call(A a);
    }

    /* loaded from: classes4.dex */
    public interface ICameraUpdate {
    }

    /* loaded from: classes4.dex */
    public interface ICancelableCallback {
        void onCancel();

        void onFinish();
    }

    /* loaded from: classes4.dex */
    public interface ICircle {
        double getRadius();

        void remove();

        void setCenter(LatLng latLng);

        void setFillColor(int i);

        void setRadius(double d);

        void setStrokeColor(int i);
    }

    /* loaded from: classes4.dex */
    public interface ICircleOptions {
        ICircleOptions center(LatLng latLng);

        ICircleOptions fillColor(int i);

        ICircleOptions radius(double d);

        ICircleOptions strokeColor(int i);

        ICircleOptions strokePattern(List<PatternItem> list);

        ICircleOptions strokeWidth(int i);
    }

    /* loaded from: classes4.dex */
    public interface ILatLngBounds {
        LatLng getCenter();
    }

    /* loaded from: classes4.dex */
    public interface ILatLngBoundsBuilder {
        ILatLngBounds build();

        ILatLngBoundsBuilder include(LatLng latLng);
    }

    /* loaded from: classes4.dex */
    public interface IMap {
        ICircle addCircle(ICircleOptions iCircleOptions);

        IMarker addMarker(IMarkerOptions iMarkerOptions);

        void animateCamera(ICameraUpdate iCameraUpdate);

        void animateCamera(ICameraUpdate iCameraUpdate, int i, ICancelableCallback iCancelableCallback);

        void animateCamera(ICameraUpdate iCameraUpdate, ICancelableCallback iCancelableCallback);

        CameraPosition getCameraPosition();

        float getMaxZoomLevel();

        float getMinZoomLevel();

        IProjection getProjection();

        IUISettings getUiSettings();

        void moveCamera(ICameraUpdate iCameraUpdate);

        void setMapStyle(IMapStyleOptions iMapStyleOptions);

        void setMapType(int i);

        void setMyLocationEnabled(boolean z);

        void setOnCameraIdleListener(Runnable runnable);

        void setOnCameraMoveListener(Runnable runnable);

        void setOnCameraMoveStartedListener(OnCameraMoveStartedListener onCameraMoveStartedListener);

        void setOnMapLoadedCallback(Runnable runnable);

        void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener);

        void setOnMyLocationChangeListener(Consumer<Location> consumer);

        void setPadding(int i, int i2, int i3, int i4);
    }

    /* loaded from: classes4.dex */
    public interface IMapStyleOptions {
    }

    /* loaded from: classes4.dex */
    public interface IMapView {

        /* renamed from: org.telegram.messenger.IMapsProvider$IMapView$-CC  reason: invalid class name */
        /* loaded from: classes4.dex */
        public final /* synthetic */ class CC {
            public static GLSurfaceView $default$getGlSurfaceView(IMapView iMapView) {
                return null;
            }
        }

        GLSurfaceView getGlSurfaceView();

        void getMapAsync(Consumer<IMap> consumer);

        View getView();

        void onCreate(Bundle bundle);

        void onDestroy();

        void onLowMemory();

        void onPause();

        void onResume();

        void setOnDispatchTouchEventInterceptor(ITouchInterceptor iTouchInterceptor);

        void setOnInterceptTouchEventInterceptor(ITouchInterceptor iTouchInterceptor);

        void setOnLayoutListener(Runnable runnable);
    }

    /* loaded from: classes4.dex */
    public interface IMarker {
        LatLng getPosition();

        Object getTag();

        void remove();

        void setIcon(int i);

        void setIcon(Bitmap bitmap);

        void setPosition(LatLng latLng);

        void setRotation(int i);

        void setTag(Object obj);
    }

    /* loaded from: classes4.dex */
    public interface IMarkerOptions {
        IMarkerOptions anchor(float f, float f2);

        IMarkerOptions flat(boolean z);

        IMarkerOptions icon(int i);

        IMarkerOptions icon(Bitmap bitmap);

        IMarkerOptions position(LatLng latLng);

        IMarkerOptions snippet(String str);

        IMarkerOptions title(String str);
    }

    /* loaded from: classes4.dex */
    public interface IProjection {
        Point toScreenLocation(LatLng latLng);
    }

    /* loaded from: classes4.dex */
    public interface ITouchInterceptor {
        boolean onInterceptTouchEvent(MotionEvent motionEvent, ICallableMethod<Boolean, MotionEvent> iCallableMethod);
    }

    /* loaded from: classes4.dex */
    public interface IUISettings {
        void setCompassEnabled(boolean z);

        void setMyLocationButtonEnabled(boolean z);

        void setZoomControlsEnabled(boolean z);
    }

    /* loaded from: classes4.dex */
    public interface OnCameraMoveStartedListener {
        public static final int REASON_API_ANIMATION = 2;
        public static final int REASON_DEVELOPER_ANIMATION = 3;
        public static final int REASON_GESTURE = 1;

        void onCameraMoveStarted(int i);
    }

    /* loaded from: classes4.dex */
    public interface OnMarkerClickListener {
        boolean onClick(IMarker iMarker);
    }

    int getInstallMapsString();

    String getMapsAppPackageName();

    void initializeMaps(Context context);

    IMapStyleOptions loadRawResourceStyle(Context context, int i);

    ICameraUpdate newCameraUpdateLatLng(LatLng latLng);

    ICameraUpdate newCameraUpdateLatLngBounds(ILatLngBounds iLatLngBounds, int i);

    ICameraUpdate newCameraUpdateLatLngZoom(LatLng latLng, float f);

    ICircleOptions onCreateCircleOptions();

    ILatLngBoundsBuilder onCreateLatLngBoundsBuilder();

    IMapView onCreateMapView(Context context);

    IMarkerOptions onCreateMarkerOptions();

    /* loaded from: classes4.dex */
    public static class PatternItem {

        /* loaded from: classes4.dex */
        public static final class Gap extends PatternItem {
            public final int length;

            public Gap(int i) {
                this.length = i;
            }
        }

        /* loaded from: classes4.dex */
        public static final class Dash extends PatternItem {
            public final int length;

            public Dash(int i) {
                this.length = i;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class CameraPosition {
        public final LatLng target;
        public final float zoom;

        public CameraPosition(LatLng latLng, float f) {
            this.target = latLng;
            this.zoom = f;
        }
    }

    /* loaded from: classes4.dex */
    public static final class LatLng {
        public final double latitude;
        public final double longitude;

        public LatLng(double d, double d2) {
            this.latitude = d;
            this.longitude = d2;
        }
    }
}
