package com.google.firebase.firestore.core;

import com.google.firebase.firestore.core.Filter;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.FieldPath;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.p022v1.Value;
import java.util.Arrays;
/* loaded from: classes3.dex */
public class FieldFilter extends Filter {
    private final FieldPath field;
    private final Filter.Operator operator;
    private final Value value;

    /* JADX INFO: Access modifiers changed from: protected */
    public FieldFilter(FieldPath fieldPath, Filter.Operator operator, Value value) {
        this.field = fieldPath;
        this.operator = operator;
        this.value = value;
    }

    public Filter.Operator getOperator() {
        return this.operator;
    }

    public FieldPath getField() {
        return this.field;
    }

    public Value getValue() {
        return this.value;
    }

    public static FieldFilter create(FieldPath fieldPath, Filter.Operator operator, Value value) {
        if (fieldPath.isKeyField()) {
            if (operator == Filter.Operator.IN) {
                return new KeyFieldInFilter(fieldPath, value);
            }
            if (operator == Filter.Operator.NOT_IN) {
                return new KeyFieldNotInFilter(fieldPath, value);
            }
            boolean z = (operator == Filter.Operator.ARRAY_CONTAINS || operator == Filter.Operator.ARRAY_CONTAINS_ANY) ? false : true;
            Assert.hardAssert(z, operator.toString() + "queries don't make sense on document keys", new Object[0]);
            return new KeyFieldFilter(fieldPath, operator, value);
        } else if (operator == Filter.Operator.ARRAY_CONTAINS) {
            return new ArrayContainsFilter(fieldPath, value);
        } else {
            if (operator == Filter.Operator.IN) {
                return new InFilter(fieldPath, value);
            }
            if (operator == Filter.Operator.ARRAY_CONTAINS_ANY) {
                return new ArrayContainsAnyFilter(fieldPath, value);
            }
            if (operator == Filter.Operator.NOT_IN) {
                return new NotInFilter(fieldPath, value);
            }
            return new FieldFilter(fieldPath, operator, value);
        }
    }

    @Override // com.google.firebase.firestore.core.Filter
    public boolean matches(Document document) {
        Value field = document.getField(this.field);
        return this.operator == Filter.Operator.NOT_EQUAL ? field != null && matchesComparison(Values.compare(field, this.value)) : field != null && Values.typeOrder(field) == Values.typeOrder(this.value) && matchesComparison(Values.compare(field, this.value));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.firestore.core.FieldFilter$1 */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C10161 {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$firestore$core$Filter$Operator;

        static {
            int[] iArr = new int[Filter.Operator.values().length];
            $SwitchMap$com$google$firebase$firestore$core$Filter$Operator = iArr;
            try {
                iArr[Filter.Operator.LESS_THAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.LESS_THAN_OR_EQUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.EQUAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.NOT_EQUAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.GREATER_THAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.GREATER_THAN_OR_EQUAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean matchesComparison(int i) {
        switch (C10161.$SwitchMap$com$google$firebase$firestore$core$Filter$Operator[this.operator.ordinal()]) {
            case 1:
                return i < 0;
            case 2:
                return i <= 0;
            case 3:
                return i == 0;
            case 4:
                return i != 0;
            case 5:
                return i > 0;
            case 6:
                return i >= 0;
            default:
                throw Assert.fail("Unknown FieldFilter operator: %s", this.operator);
        }
    }

    public boolean isInequality() {
        return Arrays.asList(Filter.Operator.LESS_THAN, Filter.Operator.LESS_THAN_OR_EQUAL, Filter.Operator.GREATER_THAN, Filter.Operator.GREATER_THAN_OR_EQUAL, Filter.Operator.NOT_EQUAL, Filter.Operator.NOT_IN).contains(this.operator);
    }

    @Override // com.google.firebase.firestore.core.Filter
    public String getCanonicalId() {
        return getField().canonicalString() + getOperator().toString() + Values.canonicalId(getValue());
    }

    public String toString() {
        return this.field.canonicalString() + " " + this.operator + " " + Values.canonicalId(this.value);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof FieldFilter)) {
            return false;
        }
        FieldFilter fieldFilter = (FieldFilter) obj;
        return this.operator == fieldFilter.operator && this.field.equals(fieldFilter.field) && this.value.equals(fieldFilter.value);
    }

    public int hashCode() {
        return ((((1147 + this.operator.hashCode()) * 31) + this.field.hashCode()) * 31) + this.value.hashCode();
    }
}
