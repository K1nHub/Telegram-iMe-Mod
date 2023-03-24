package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Locale;
import java.util.TimeZone;
/* JADX WARN: Method from annotation default annotation not found: locale */
/* JADX WARN: Method from annotation default annotation not found: pattern */
/* JADX WARN: Method from annotation default annotation not found: shape */
/* JADX WARN: Method from annotation default annotation not found: timezone */
/* JADX WARN: Method from annotation default annotation not found: with */
/* JADX WARN: Method from annotation default annotation not found: without */
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonFormat {

    /* loaded from: classes.dex */
    public enum Shape {
        ANY,
        NATURAL,
        SCALAR,
        ARRAY,
        OBJECT,
        NUMBER,
        NUMBER_FLOAT,
        NUMBER_INT,
        STRING,
        BOOLEAN;

        public boolean isNumeric() {
            return this == NUMBER || this == NUMBER_INT || this == NUMBER_FLOAT;
        }

        public boolean isStructured() {
            return this == OBJECT || this == ARRAY;
        }
    }

    /* loaded from: classes.dex */
    public static class Features {
        private static final Features EMPTY = new Features(0, 0);
        private final int _disabled;
        private final int _enabled;

        private Features(int i, int i2) {
            this._enabled = i;
            this._disabled = i2;
        }

        public static Features empty() {
            return EMPTY;
        }

        public int hashCode() {
            return this._disabled + this._enabled;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == Features.class) {
                Features features = (Features) obj;
                return features._enabled == this._enabled && features._disabled == this._disabled;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class Value implements Serializable {
        private static final Value EMPTY = new Value();
        private final Features _features;
        private final Locale _locale;
        private final String _pattern;
        private final Shape _shape;
        private transient TimeZone _timezone;
        private final String _timezoneStr;

        public Value() {
            this("", Shape.ANY, "", "", Features.empty());
        }

        public Value(String str, Shape shape, String str2, String str3, Features features) {
            this(str, shape, (str2 == null || str2.length() == 0 || "##default".equals(str2)) ? null : new Locale(str2), (str3 == null || str3.length() == 0 || "##default".equals(str3)) ? null : str3, null, features);
        }

        public Value(String str, Shape shape, Locale locale, String str2, TimeZone timeZone, Features features) {
            this._pattern = str;
            this._shape = shape == null ? Shape.ANY : shape;
            this._locale = locale;
            this._timezone = timeZone;
            this._timezoneStr = str2;
            this._features = features == null ? Features.empty() : features;
        }

        public static final Value empty() {
            return EMPTY;
        }

        public String toString() {
            return String.format("[pattern=%s,shape=%s,locale=%s,timezone=%s]", this._pattern, this._shape, this._locale, this._timezoneStr);
        }

        public int hashCode() {
            String str = this._timezoneStr;
            int hashCode = str == null ? 1 : str.hashCode();
            String str2 = this._pattern;
            if (str2 != null) {
                hashCode ^= str2.hashCode();
            }
            int hashCode2 = hashCode + this._shape.hashCode();
            Locale locale = this._locale;
            if (locale != null) {
                hashCode2 ^= locale.hashCode();
            }
            return hashCode2 + this._features.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == Value.class) {
                Value value = (Value) obj;
                if (this._shape == value._shape && this._features.equals(value._features)) {
                    return _equal(this._timezoneStr, value._timezoneStr) && _equal(this._pattern, value._pattern) && _equal(this._timezone, value._timezone) && _equal(this._locale, value._locale);
                }
                return false;
            }
            return false;
        }

        private static <T> boolean _equal(T t, T t2) {
            if (t == null) {
                return t2 == null;
            } else if (t2 == null) {
                return false;
            } else {
                return t.equals(t2);
            }
        }
    }
}
