package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
/* loaded from: classes.dex */
public class Guideline extends ConstraintWidget {
    private boolean resolved;
    protected float mRelativePercent = -1.0f;
    protected int mRelativeBegin = -1;
    protected int mRelativeEnd = -1;
    private ConstraintAnchor mAnchor = this.mTop;
    private int mOrientation = 0;

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    public Guideline() {
        this.mAnchors.clear();
        this.mAnchors.add(this.mAnchor);
        int length = this.mListAnchors.length;
        for (int i = 0; i < length; i++) {
            this.mListAnchors[i] = this.mAnchor;
        }
    }

    public void setOrientation(int i) {
        if (this.mOrientation == i) {
            return;
        }
        this.mOrientation = i;
        this.mAnchors.clear();
        if (this.mOrientation == 1) {
            this.mAnchor = this.mLeft;
        } else {
            this.mAnchor = this.mTop;
        }
        this.mAnchors.add(this.mAnchor);
        int length = this.mListAnchors.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mListAnchors[i2] = this.mAnchor;
        }
    }

    public ConstraintAnchor getAnchor() {
        return this.mAnchor;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    /* renamed from: androidx.constraintlayout.core.widgets.Guideline$1 */
    /* loaded from: classes.dex */
    static /* synthetic */ class C01021 {

        /* renamed from: $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type */
        static final /* synthetic */ int[] f26x6930e354;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f26x6930e354 = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26x6930e354[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26x6930e354[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26x6930e354[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26x6930e354[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26x6930e354[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26x6930e354[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26x6930e354[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f26x6930e354[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        int i = C01021.f26x6930e354[type.ordinal()];
        if (i == 1 || i == 2) {
            if (this.mOrientation == 1) {
                return this.mAnchor;
            }
            return null;
        } else if ((i == 3 || i == 4) && this.mOrientation == 0) {
            return this.mAnchor;
        } else {
            return null;
        }
    }

    public void setGuidePercent(float f) {
        if (f > -1.0f) {
            this.mRelativePercent = f;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = -1;
        }
    }

    public void setGuideBegin(int i) {
        if (i > -1) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = i;
            this.mRelativeEnd = -1;
        }
    }

    public void setGuideEnd(int i) {
        if (i > -1) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = i;
        }
    }

    public float getRelativePercent() {
        return this.mRelativePercent;
    }

    public int getRelativeBegin() {
        return this.mRelativeBegin;
    }

    public int getRelativeEnd() {
        return this.mRelativeEnd;
    }

    public void setFinalValue(int i) {
        this.mAnchor.setFinalValue(i);
        this.resolved = true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedHorizontally() {
        return this.resolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedVertically() {
        return this.resolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z) {
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) getParent();
        if (constraintWidgetContainer == null) {
            return;
        }
        ConstraintAnchor anchor = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintWidget constraintWidget = this.mParent;
        boolean z2 = true;
        boolean z3 = constraintWidget != null && constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (this.mOrientation == 0) {
            anchor = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.TOP);
            anchor2 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.BOTTOM);
            ConstraintWidget constraintWidget2 = this.mParent;
            if (constraintWidget2 == null || constraintWidget2.mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                z2 = false;
            }
            z3 = z2;
        }
        if (this.resolved && this.mAnchor.hasFinalValue()) {
            SolverVariable createObjectVariable = linearSystem.createObjectVariable(this.mAnchor);
            linearSystem.addEquality(createObjectVariable, this.mAnchor.getFinalValue());
            if (this.mRelativeBegin != -1) {
                if (z3) {
                    linearSystem.addGreaterThan(linearSystem.createObjectVariable(anchor2), createObjectVariable, 0, 5);
                }
            } else if (this.mRelativeEnd != -1 && z3) {
                SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(anchor2);
                linearSystem.addGreaterThan(createObjectVariable, linearSystem.createObjectVariable(anchor), 0, 5);
                linearSystem.addGreaterThan(createObjectVariable2, createObjectVariable, 0, 5);
            }
            this.resolved = false;
        } else if (this.mRelativeBegin != -1) {
            SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(this.mAnchor);
            linearSystem.addEquality(createObjectVariable3, linearSystem.createObjectVariable(anchor), this.mRelativeBegin, 8);
            if (z3) {
                linearSystem.addGreaterThan(linearSystem.createObjectVariable(anchor2), createObjectVariable3, 0, 5);
            }
        } else if (this.mRelativeEnd != -1) {
            SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(this.mAnchor);
            SolverVariable createObjectVariable5 = linearSystem.createObjectVariable(anchor2);
            linearSystem.addEquality(createObjectVariable4, createObjectVariable5, -this.mRelativeEnd, 8);
            if (z3) {
                linearSystem.addGreaterThan(createObjectVariable4, linearSystem.createObjectVariable(anchor), 0, 5);
                linearSystem.addGreaterThan(createObjectVariable5, createObjectVariable4, 0, 5);
            }
        } else if (this.mRelativePercent != -1.0f) {
            linearSystem.addConstraint(LinearSystem.createRowDimensionPercent(linearSystem, linearSystem.createObjectVariable(this.mAnchor), linearSystem.createObjectVariable(anchor2), this.mRelativePercent));
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void updateFromSolver(LinearSystem linearSystem, boolean z) {
        if (getParent() == null) {
            return;
        }
        int objectVariableValue = linearSystem.getObjectVariableValue(this.mAnchor);
        if (this.mOrientation == 1) {
            setX(objectVariableValue);
            setY(0);
            setHeight(getParent().getHeight());
            setWidth(0);
            return;
        }
        setX(0);
        setY(objectVariableValue);
        setWidth(getParent().getWidth());
        setHeight(0);
    }
}
