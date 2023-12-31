package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.core.view.NestedScrollingParent3;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static boolean IS_IN_EDIT_MODE;
    private long mAnimationStartTime;
    private int mBeginState;
    int mCurrentState;
    int mDebugPath;
    private ArrayList<MotionHelper> mDecoratorsHelpers;
    private boolean mDelayedApply;
    private DesignTool mDesignTool;
    private int mEndState;
    HashMap<View, MotionController> mFrameArrayList;
    private boolean mInLayout;
    boolean mInTransition;
    private boolean mInteractionEnabled;
    Interpolator mInterpolator;
    private boolean mKeepAnimating;
    private KeyCache mKeyCache;
    float mLastVelocity;
    private float mListenerPosition;
    private int mListenerState;
    protected boolean mMeasureDuringTransition;
    private boolean mNeedsFireTransitionCompleted;
    private Runnable mOnComplete;
    private ArrayList<MotionHelper> mOnHideHelpers;
    private ArrayList<MotionHelper> mOnShowHelpers;
    float mPostInterpolationPosition;
    Interpolator mProgressInterpolator;
    MotionScene mScene;
    private int[] mScheduledTransitionTo;
    int mScheduledTransitions;
    float mScrollTargetDT;
    float mScrollTargetDX;
    float mScrollTargetDY;
    long mScrollTargetTime;
    private StateCache mStateCache;
    private StopLogic mStopLogic;
    private boolean mTemporalInterpolator;
    ArrayList<Integer> mTransitionCompleted;
    private float mTransitionDuration;
    float mTransitionGoalPosition;
    private boolean mTransitionInstantly;
    float mTransitionLastPosition;
    private long mTransitionLastTime;
    private TransitionListener mTransitionListener;
    private CopyOnWriteArrayList<TransitionListener> mTransitionListeners;
    float mTransitionPosition;
    TransitionState mTransitionState;
    boolean mUndergoingMotion;

    /* loaded from: classes.dex */
    public interface TransitionListener {
        void onTransitionChange(MotionLayout motionLayout, int startId, int endId, float progress);

        void onTransitionCompleted(MotionLayout motionLayout, int currentId);

        void onTransitionStarted(MotionLayout motionLayout, int startId, int endId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    void animateTo(float position) {
    }

    public int[] getConstraintSetIds() {
        return null;
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed, int type) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
    }

    void onNewStateAttachHandlers() {
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int layoutDirection) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View child, View target, int axes, int type) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View target, int type) {
    }

    public void setTransition(int transitionId) {
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    void setState(TransitionState newState) {
        TransitionState transitionState = TransitionState.FINISHED;
        if (newState == transitionState && this.mCurrentState == -1) {
            return;
        }
        TransitionState transitionState2 = this.mTransitionState;
        this.mTransitionState = newState;
        TransitionState transitionState3 = TransitionState.MOVING;
        if (transitionState2 == transitionState3 && newState == transitionState3) {
            fireTransitionChange();
        }
        int i = C01135.f31xabc7e4ac[transitionState2.ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3 && newState == transitionState) {
                fireTransitionCompleted();
                return;
            }
            return;
        }
        if (newState == transitionState3) {
            fireTransitionChange();
        }
        if (newState == transitionState) {
            fireTransitionCompleted();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$5 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C01135 {

        /* renamed from: $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState */
        static final /* synthetic */ int[] f31xabc7e4ac;

        static {
            int[] iArr = new int[TransitionState.values().length];
            f31xabc7e4ac = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31xabc7e4ac[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31xabc7e4ac[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31xabc7e4ac[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    void setStartState(int beginId) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setStartState(beginId);
            this.mStateCache.setEndState(beginId);
            return;
        }
        this.mCurrentState = beginId;
    }

    public void setTransition(int beginId, int endId) {
        if (isAttachedToWindow()) {
            return;
        }
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.setStartState(beginId);
        this.mStateCache.setEndState(endId);
    }

    protected void setTransition(MotionScene.Transition transition) {
        throw null;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        if (Build.VERSION.SDK_INT >= 19) {
            return super.isAttachedToWindow();
        }
        return getWindowToken() != null;
    }

    public void setState(int id, int screenWidth, int screenHeight) {
        setState(TransitionState.SETUP);
        this.mCurrentState = id;
        this.mBeginState = -1;
        this.mEndState = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(id, screenWidth, screenHeight);
        }
    }

    public void setInterpolatedProgress(float pos) {
        setProgress(pos);
    }

    public void setProgress(float pos, float velocity) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setProgress(pos);
            this.mStateCache.setVelocity(velocity);
            return;
        }
        setProgress(pos);
        setState(TransitionState.MOVING);
        this.mLastVelocity = velocity;
        animateTo(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class StateCache {
        float mProgress = Float.NaN;
        float mVelocity = Float.NaN;
        int startState = -1;
        int endState = -1;

        StateCache() {
        }

        void apply() {
            int i = this.startState;
            if (i != -1 || this.endState != -1) {
                if (i == -1) {
                    MotionLayout.this.transitionToState(this.endState);
                } else {
                    int i2 = this.endState;
                    if (i2 == -1) {
                        MotionLayout.this.setState(i, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i, i2);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.mVelocity)) {
                if (Float.isNaN(this.mProgress)) {
                    return;
                }
                MotionLayout.this.setProgress(this.mProgress);
                return;
            }
            MotionLayout.this.setProgress(this.mProgress, this.mVelocity);
            this.mProgress = Float.NaN;
            this.mVelocity = Float.NaN;
            this.startState = -1;
            this.endState = -1;
        }

        public Bundle getTransitionState() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.mProgress);
            bundle.putFloat("motion.velocity", this.mVelocity);
            bundle.putInt("motion.StartState", this.startState);
            bundle.putInt("motion.EndState", this.endState);
            return bundle;
        }

        public void setTransitionState(Bundle bundle) {
            this.mProgress = bundle.getFloat("motion.progress");
            this.mVelocity = bundle.getFloat("motion.velocity");
            this.startState = bundle.getInt("motion.StartState");
            this.endState = bundle.getInt("motion.EndState");
        }

        public void setProgress(float progress) {
            this.mProgress = progress;
        }

        public void setEndState(int endState) {
            this.endState = endState;
        }

        public void setVelocity(float mVelocity) {
            this.mVelocity = mVelocity;
        }

        public void setStartState(int startState) {
            this.startState = startState;
        }

        public void recordState() {
            this.endState = MotionLayout.this.mEndState;
            this.startState = MotionLayout.this.mBeginState;
            this.mVelocity = MotionLayout.this.getVelocity();
            this.mProgress = MotionLayout.this.getProgress();
        }
    }

    public void setTransitionState(Bundle bundle) {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.setTransitionState(bundle);
        if (isAttachedToWindow()) {
            this.mStateCache.apply();
        }
    }

    public Bundle getTransitionState() {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.recordState();
        return this.mStateCache.getTransitionState();
    }

    public void setProgress(float pos) {
        int i = (pos > BitmapDescriptorFactory.HUE_RED ? 1 : (pos == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i < 0 || pos > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setProgress(pos);
        } else if (i <= 0) {
            if (this.mTransitionLastPosition == 1.0f && this.mCurrentState == this.mEndState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mBeginState;
            if (this.mTransitionLastPosition == BitmapDescriptorFactory.HUE_RED) {
                setState(TransitionState.FINISHED);
            }
        } else if (pos >= 1.0f) {
            if (this.mTransitionLastPosition == BitmapDescriptorFactory.HUE_RED && this.mCurrentState == this.mBeginState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mEndState;
            if (this.mTransitionLastPosition == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.mCurrentState = -1;
            setState(TransitionState.MOVING);
        }
    }

    public void transitionToEnd() {
        animateTo(1.0f);
        this.mOnComplete = null;
    }

    public void transitionToState(int id) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setEndState(id);
            return;
        }
        transitionToState(id, -1, -1);
    }

    public void transitionToState(int id, int screenWidth, int screenHeight) {
        transitionToState(id, screenWidth, screenHeight, -1);
    }

    public void transitionToState(int id, int screenWidth, int screenHeight, int duration) {
        int i = this.mCurrentState;
        if (i == id) {
            return;
        }
        if (this.mBeginState == id) {
            animateTo(BitmapDescriptorFactory.HUE_RED);
            if (duration > 0) {
                this.mTransitionDuration = duration / 1000.0f;
            }
        } else if (this.mEndState == id) {
            animateTo(1.0f);
            if (duration > 0) {
                this.mTransitionDuration = duration / 1000.0f;
            }
        } else {
            this.mEndState = id;
            if (i != -1) {
                setTransition(i, id);
                animateTo(1.0f);
                this.mTransitionLastPosition = BitmapDescriptorFactory.HUE_RED;
                transitionToEnd();
                if (duration > 0) {
                    this.mTransitionDuration = duration / 1000.0f;
                    return;
                }
                return;
            }
            this.mTemporalInterpolator = false;
            this.mTransitionGoalPosition = 1.0f;
            this.mTransitionPosition = BitmapDescriptorFactory.HUE_RED;
            this.mTransitionLastPosition = BitmapDescriptorFactory.HUE_RED;
            this.mTransitionLastTime = getNanoTime();
            this.mAnimationStartTime = getNanoTime();
            this.mTransitionInstantly = false;
            this.mInterpolator = null;
            if (duration == -1) {
                throw null;
            }
            this.mBeginState = -1;
            throw null;
        }
    }

    public float getVelocity() {
        return this.mLastVelocity;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.mMeasureDuringTransition) {
            int i = this.mCurrentState;
        }
        super.requestLayout();
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.getName(context, this.mBeginState) + "->" + Debug.getName(context, this.mEndState) + " (pos:" + this.mTransitionLastPosition + " Dpos/Dt:" + this.mLastVelocity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View child, View target, int axes, int type) {
        this.mScrollTargetTime = getNanoTime();
        this.mScrollTargetDT = BitmapDescriptorFactory.HUE_RED;
        this.mScrollTargetDX = BitmapDescriptorFactory.HUE_RED;
        this.mScrollTargetDY = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type, int[] consumed) {
        if (this.mUndergoingMotion || dxConsumed != 0 || dyConsumed != 0) {
            consumed[0] = consumed[0] + dxUnconsumed;
            consumed[1] = consumed[1] + dyUnconsumed;
        }
        this.mUndergoingMotion = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
        if (arrayList != null) {
            Iterator<MotionHelper> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onPreDraw(canvas);
            }
        }
        evaluate(false);
        super.dispatchDraw(canvas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void evaluate(boolean force) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        float interpolation;
        boolean z4;
        boolean z5;
        if (this.mTransitionLastTime == -1) {
            this.mTransitionLastTime = getNanoTime();
        }
        float f = this.mTransitionLastPosition;
        if (f > BitmapDescriptorFactory.HUE_RED && f < 1.0f) {
            this.mCurrentState = -1;
        }
        if (this.mKeepAnimating || (this.mInTransition && (force || this.mTransitionGoalPosition != f))) {
            float signum = Math.signum(this.mTransitionGoalPosition - f);
            long nanoTime = getNanoTime();
            Interpolator interpolator = this.mInterpolator;
            float f2 = !(interpolator instanceof MotionInterpolator) ? ((((float) (nanoTime - this.mTransitionLastTime)) * signum) * 1.0E-9f) / this.mTransitionDuration : 0.0f;
            float f3 = this.mTransitionLastPosition + f2;
            if (this.mTransitionInstantly) {
                f3 = this.mTransitionGoalPosition;
            }
            int i2 = (signum > BitmapDescriptorFactory.HUE_RED ? 1 : (signum == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            if ((i2 <= 0 || f3 < this.mTransitionGoalPosition) && (signum > BitmapDescriptorFactory.HUE_RED || f3 > this.mTransitionGoalPosition)) {
                z = false;
            } else {
                f3 = this.mTransitionGoalPosition;
                this.mInTransition = false;
                z = true;
            }
            this.mTransitionLastPosition = f3;
            this.mTransitionPosition = f3;
            this.mTransitionLastTime = nanoTime;
            if (interpolator != null && !z) {
                if (this.mTemporalInterpolator) {
                    interpolation = interpolator.getInterpolation(((float) (nanoTime - this.mAnimationStartTime)) * 1.0E-9f);
                    Interpolator interpolator2 = this.mInterpolator;
                    if (interpolator2 == this.mStopLogic) {
                        throw null;
                    }
                    this.mTransitionLastPosition = interpolation;
                    this.mTransitionLastTime = nanoTime;
                    if (interpolator2 instanceof MotionInterpolator) {
                        float velocity = ((MotionInterpolator) interpolator2).getVelocity();
                        this.mLastVelocity = velocity;
                        int i3 = ((Math.abs(velocity) * this.mTransitionDuration) > 1.0E-5f ? 1 : ((Math.abs(velocity) * this.mTransitionDuration) == 1.0E-5f ? 0 : -1));
                        if (velocity <= BitmapDescriptorFactory.HUE_RED || interpolation < 1.0f) {
                            z4 = false;
                        } else {
                            this.mTransitionLastPosition = 1.0f;
                            z4 = false;
                            this.mInTransition = false;
                            interpolation = 1.0f;
                        }
                        if (velocity < BitmapDescriptorFactory.HUE_RED && interpolation <= BitmapDescriptorFactory.HUE_RED) {
                            this.mTransitionLastPosition = BitmapDescriptorFactory.HUE_RED;
                            this.mInTransition = z4;
                            f3 = 0.0f;
                        }
                    }
                } else {
                    interpolation = interpolator.getInterpolation(f3);
                    Interpolator interpolator3 = this.mInterpolator;
                    if (interpolator3 instanceof MotionInterpolator) {
                        this.mLastVelocity = ((MotionInterpolator) interpolator3).getVelocity();
                    } else {
                        this.mLastVelocity = ((interpolator3.getInterpolation(f3 + f2) - interpolation) * signum) / f2;
                    }
                }
                f3 = interpolation;
            } else {
                this.mLastVelocity = f2;
            }
            if (Math.abs(this.mLastVelocity) > 1.0E-5f) {
                setState(TransitionState.MOVING);
            }
            if ((i2 > 0 && f3 >= this.mTransitionGoalPosition) || (signum <= BitmapDescriptorFactory.HUE_RED && f3 <= this.mTransitionGoalPosition)) {
                f3 = this.mTransitionGoalPosition;
                this.mInTransition = false;
            }
            if (f3 >= 1.0f || f3 <= BitmapDescriptorFactory.HUE_RED) {
                z2 = 0;
                this.mInTransition = false;
                setState(TransitionState.FINISHED);
            } else {
                z2 = 0;
            }
            int childCount = getChildCount();
            this.mKeepAnimating = z2;
            long nanoTime2 = getNanoTime();
            this.mPostInterpolationPosition = f3;
            Interpolator interpolator4 = this.mProgressInterpolator;
            float interpolation2 = interpolator4 == null ? f3 : interpolator4.getInterpolation(f3);
            Interpolator interpolator5 = this.mProgressInterpolator;
            if (interpolator5 != null) {
                float interpolation3 = interpolator5.getInterpolation((signum / this.mTransitionDuration) + f3);
                this.mLastVelocity = interpolation3;
                this.mLastVelocity = interpolation3 - this.mProgressInterpolator.getInterpolation(f3);
            }
            for (int i4 = z2; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                MotionController motionController = this.mFrameArrayList.get(childAt);
                if (motionController != null) {
                    this.mKeepAnimating = motionController.interpolate(childAt, interpolation2, nanoTime2, this.mKeyCache) | this.mKeepAnimating;
                }
            }
            boolean z6 = (i2 > 0 && f3 >= this.mTransitionGoalPosition) || (signum <= BitmapDescriptorFactory.HUE_RED && f3 <= this.mTransitionGoalPosition);
            if (!this.mKeepAnimating && !this.mInTransition && z6) {
                setState(TransitionState.FINISHED);
            }
            if (this.mMeasureDuringTransition) {
                requestLayout();
            }
            z3 = true;
            boolean z7 = this.mKeepAnimating | (!z6);
            this.mKeepAnimating = z7;
            if (f3 <= BitmapDescriptorFactory.HUE_RED && (i = this.mBeginState) != -1 && this.mCurrentState != i) {
                this.mCurrentState = i;
                throw null;
            }
            if (f3 >= 1.0d) {
                int i5 = this.mCurrentState;
                int i6 = this.mEndState;
                if (i5 != i6) {
                    this.mCurrentState = i6;
                    throw null;
                }
            }
            if (z7 || this.mInTransition) {
                invalidate();
            } else if ((i2 > 0 && f3 == 1.0f) || (signum < BitmapDescriptorFactory.HUE_RED && f3 == BitmapDescriptorFactory.HUE_RED)) {
                setState(TransitionState.FINISHED);
            }
            if (!this.mKeepAnimating && !this.mInTransition && ((i2 > 0 && f3 == 1.0f) || (signum < BitmapDescriptorFactory.HUE_RED && f3 == BitmapDescriptorFactory.HUE_RED))) {
                onNewStateAttachHandlers();
            }
        } else {
            z3 = true;
        }
        float f4 = this.mTransitionLastPosition;
        if (f4 >= 1.0f) {
            int i7 = this.mCurrentState;
            int i8 = this.mEndState;
            if (i7 == i8) {
                z3 = false;
            }
            this.mCurrentState = i8;
        } else if (f4 <= BitmapDescriptorFactory.HUE_RED) {
            int i9 = this.mCurrentState;
            int i10 = this.mBeginState;
            if (i9 == i10) {
                z3 = false;
            }
            this.mCurrentState = i10;
        } else {
            z5 = false;
            this.mNeedsFireTransitionCompleted |= z5;
            if (z5 && !this.mInLayout) {
                requestLayout();
            }
            this.mTransitionPosition = this.mTransitionLastPosition;
        }
        z5 = z3;
        this.mNeedsFireTransitionCompleted |= z5;
        if (z5) {
            requestLayout();
        }
        this.mTransitionPosition = this.mTransitionLastPosition;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        this.mInLayout = true;
        try {
            super.onLayout(changed, left, top, right, bottom);
        } finally {
            this.mInLayout = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void parseLayoutDescription(int id) {
        this.mConstraintLayoutSpec = null;
    }

    public void setScene(MotionScene scene) {
        isRtl();
        throw null;
    }

    public MotionScene getScene() {
        return this.mScene;
    }

    public void setDebugMode(int debugMode) {
        this.mDebugPath = debugMode;
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return super.onTouchEvent(event);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        Display display;
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 17 && (display = getDisplay()) != null) {
            display.getRotation();
        }
        onNewStateAttachHandlers();
        StateCache stateCache = this.mStateCache;
        if (stateCache != null) {
            if (this.mDelayedApply) {
                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MotionLayout.this.mStateCache.apply();
                    }
                });
            } else {
                stateCache.apply();
            }
        }
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public float getProgress() {
        return this.mTransitionLastPosition;
    }

    public long getTransitionTimeMs() {
        return this.mTransitionDuration * 1000.0f;
    }

    public void setTransitionListener(TransitionListener listener) {
        this.mTransitionListener = listener;
    }

    private void fireTransitionChange() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) || this.mListenerPosition == this.mTransitionPosition) {
            return;
        }
        if (this.mListenerState != -1) {
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionStarted(this, this.mBeginState, this.mEndState);
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().onTransitionStarted(this, this.mBeginState, this.mEndState);
                }
            }
        }
        this.mListenerState = -1;
        float f = this.mTransitionPosition;
        this.mListenerPosition = f;
        TransitionListener transitionListener2 = this.mTransitionListener;
        if (transitionListener2 != null) {
            transitionListener2.onTransitionChange(this, this.mBeginState, this.mEndState, f);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList3 = this.mTransitionListeners;
        if (copyOnWriteArrayList3 != null) {
            Iterator<TransitionListener> it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().onTransitionChange(this, this.mBeginState, this.mEndState, this.mTransitionPosition);
            }
        }
    }

    protected void fireTransitionCompleted() {
        int i;
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener != null || ((copyOnWriteArrayList = this.mTransitionListeners) != null && !copyOnWriteArrayList.isEmpty())) && this.mListenerState == -1) {
            this.mListenerState = this.mCurrentState;
            if (this.mTransitionCompleted.isEmpty()) {
                i = -1;
            } else {
                ArrayList<Integer> arrayList = this.mTransitionCompleted;
                i = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i2 = this.mCurrentState;
            if (i != i2 && i2 != -1) {
                this.mTransitionCompleted.add(Integer.valueOf(i2));
            }
        }
        processTransitionCompleted();
        Runnable runnable = this.mOnComplete;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null || this.mScheduledTransitions <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.mScheduledTransitionTo;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.mScheduledTransitions--;
    }

    private void processTransitionCompleted() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if (this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        Iterator<Integer> it = this.mTransitionCompleted.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionCompleted(this, next.intValue());
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it2 = copyOnWriteArrayList2.iterator();
                while (it2.hasNext()) {
                    it2.next().onTransitionCompleted(this, next.intValue());
                }
            }
        }
        this.mTransitionCompleted.clear();
    }

    public DesignTool getDesignTool() {
        if (this.mDesignTool == null) {
            this.mDesignTool = new DesignTool(this);
        }
        return this.mDesignTool;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.mTransitionListeners == null) {
                this.mTransitionListeners = new CopyOnWriteArrayList<>();
            }
            this.mTransitionListeners.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.mOnShowHelpers == null) {
                    this.mOnShowHelpers = new ArrayList<>();
                }
                this.mOnShowHelpers.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.mOnHideHelpers == null) {
                    this.mOnHideHelpers = new ArrayList<>();
                }
                this.mOnHideHelpers.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.mDecoratorsHelpers == null) {
                    this.mDecoratorsHelpers = new ArrayList<>();
                }
                this.mDecoratorsHelpers.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.mOnHideHelpers;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    public void setOnShow(float progress) {
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.mOnShowHelpers.get(i).setProgress(progress);
            }
        }
    }

    public void setOnHide(float progress) {
        ArrayList<MotionHelper> arrayList = this.mOnHideHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.mOnHideHelpers.get(i).setProgress(progress);
            }
        }
    }

    public int getStartState() {
        return this.mBeginState;
    }

    public int getEndState() {
        return this.mEndState;
    }

    public float getTargetPosition() {
        return this.mTransitionGoalPosition;
    }

    public void setTransitionDuration(int milliseconds) {
        Log.e("MotionLayout", "MotionScene not defined");
    }

    public void setInteractionEnabled(boolean enabled) {
        this.mInteractionEnabled = enabled;
    }

    public void setDelayedApplicationOfInitialState(boolean delayedApply) {
        this.mDelayedApply = delayedApply;
    }
}
