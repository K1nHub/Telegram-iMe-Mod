package com.google.firebase.crashlytics.internal.model;

import com.google.auto.value.AutoValue;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_ApplicationExitInfo;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_CustomAttribute;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload_File;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Application;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Device;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application_Execution;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Device;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Log;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_OperatingSystem;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_User;
import com.google.firebase.crashlytics.internal.model.C0978xfe724d07;
import com.google.firebase.crashlytics.internal.model.C0980xc2f5febc;
import com.google.firebase.crashlytics.internal.model.C0982x7c929f5b;
import com.google.firebase.crashlytics.internal.model.C0984x7e3e3ebd;
import com.google.firebase.crashlytics.internal.model.C0986xce3d994b;
import java.nio.charset.Charset;
@AutoValue
/* loaded from: classes3.dex */
public abstract class CrashlyticsReport {
    private static final Charset UTF_8 = Charset.forName("UTF-8");

    @AutoValue.Builder
    /* loaded from: classes3.dex */
    public static abstract class Builder {
        public abstract CrashlyticsReport build();

        public abstract Builder setBuildVersion(String str);

        public abstract Builder setDisplayVersion(String str);

        public abstract Builder setGmpAppId(String str);

        public abstract Builder setInstallationUuid(String str);

        public abstract Builder setNdkPayload(FilesPayload filesPayload);

        public abstract Builder setPlatform(int i);

        public abstract Builder setSdkVersion(String str);

        public abstract Builder setSession(Session session);
    }

    public abstract String getBuildVersion();

    public abstract String getDisplayVersion();

    public abstract String getGmpAppId();

    public abstract String getInstallationUuid();

    public abstract FilesPayload getNdkPayload();

    public abstract int getPlatform();

    public abstract String getSdkVersion();

    public abstract Session getSession();

    protected abstract Builder toBuilder();

    public static Builder builder() {
        return new AutoValue_CrashlyticsReport.Builder();
    }

    public CrashlyticsReport withEvents(ImmutableList<Session.Event> immutableList) {
        if (getSession() == null) {
            throw new IllegalStateException("Reports without sessions cannot have events added to them.");
        }
        return toBuilder().setSession(getSession().withEvents(immutableList)).build();
    }

    public CrashlyticsReport withNdkPayload(FilesPayload filesPayload) {
        return toBuilder().setSession(null).setNdkPayload(filesPayload).build();
    }

    public CrashlyticsReport withSessionEndFields(long j, boolean z, String str) {
        Builder builder = toBuilder();
        if (getSession() != null) {
            builder.setSession(getSession().withSessionEndFields(j, z, str));
        }
        return builder.build();
    }

    @AutoValue
    /* loaded from: classes3.dex */
    public static abstract class FilesPayload {

        @AutoValue.Builder
        /* loaded from: classes3.dex */
        public static abstract class Builder {
            public abstract FilesPayload build();

            public abstract Builder setFiles(ImmutableList<File> immutableList);

            public abstract Builder setOrgId(String str);
        }

        public abstract ImmutableList<File> getFiles();

        public abstract String getOrgId();

        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_FilesPayload.Builder();
        }

        @AutoValue
        /* loaded from: classes3.dex */
        public static abstract class File {

            @AutoValue.Builder
            /* loaded from: classes3.dex */
            public static abstract class Builder {
                public abstract File build();

                public abstract Builder setContents(byte[] bArr);

                public abstract Builder setFilename(String str);
            }

            public abstract byte[] getContents();

            public abstract String getFilename();

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_FilesPayload_File.Builder();
            }
        }
    }

    @AutoValue
    /* loaded from: classes3.dex */
    public static abstract class CustomAttribute {

        @AutoValue.Builder
        /* loaded from: classes3.dex */
        public static abstract class Builder {
            public abstract CustomAttribute build();

            public abstract Builder setKey(String str);

            public abstract Builder setValue(String str);
        }

        public abstract String getKey();

        public abstract String getValue();

        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_CustomAttribute.Builder();
        }
    }

    @AutoValue
    /* loaded from: classes3.dex */
    public static abstract class Session {
        public abstract Application getApp();

        public abstract Device getDevice();

        public abstract Long getEndedAt();

        public abstract ImmutableList<Event> getEvents();

        public abstract String getGenerator();

        public abstract int getGeneratorType();

        public abstract String getIdentifier();

        public abstract OperatingSystem getOs();

        public abstract long getStartedAt();

        public abstract User getUser();

        public abstract boolean isCrashed();

        public abstract Builder toBuilder();

        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_Session.Builder().setCrashed(false);
        }

        public byte[] getIdentifierUtf8Bytes() {
            return getIdentifier().getBytes(CrashlyticsReport.UTF_8);
        }

        Session withEvents(ImmutableList<Event> immutableList) {
            return toBuilder().setEvents(immutableList).build();
        }

        Session withSessionEndFields(long j, boolean z, String str) {
            Builder builder = toBuilder();
            builder.setEndedAt(Long.valueOf(j));
            builder.setCrashed(z);
            if (str != null) {
                builder.setUser(User.builder().setIdentifier(str).build()).build();
            }
            return builder.build();
        }

        @AutoValue.Builder
        /* loaded from: classes3.dex */
        public static abstract class Builder {
            public abstract Session build();

            public abstract Builder setApp(Application application);

            public abstract Builder setCrashed(boolean z);

            public abstract Builder setDevice(Device device);

            public abstract Builder setEndedAt(Long l);

            public abstract Builder setEvents(ImmutableList<Event> immutableList);

            public abstract Builder setGenerator(String str);

            public abstract Builder setGeneratorType(int i);

            public abstract Builder setIdentifier(String str);

            public abstract Builder setOs(OperatingSystem operatingSystem);

            public abstract Builder setStartedAt(long j);

            public abstract Builder setUser(User user);

            public Builder setIdentifierFromUtf8Bytes(byte[] bArr) {
                return setIdentifier(new String(bArr, CrashlyticsReport.UTF_8));
            }
        }

        @AutoValue
        /* loaded from: classes3.dex */
        public static abstract class User {

            @AutoValue.Builder
            /* loaded from: classes3.dex */
            public static abstract class Builder {
                public abstract User build();

                public abstract Builder setIdentifier(String str);
            }

            public abstract String getIdentifier();

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_User.Builder();
            }
        }

        @AutoValue
        /* loaded from: classes3.dex */
        public static abstract class Application {

            @AutoValue.Builder
            /* loaded from: classes3.dex */
            public static abstract class Builder {
                public abstract Application build();

                public abstract Builder setDevelopmentPlatform(String str);

                public abstract Builder setDevelopmentPlatformVersion(String str);

                public abstract Builder setDisplayVersion(String str);

                public abstract Builder setIdentifier(String str);

                public abstract Builder setInstallationUuid(String str);

                public abstract Builder setVersion(String str);
            }

            @AutoValue
            /* loaded from: classes3.dex */
            public static abstract class Organization {
                public abstract String getClsId();
            }

            public abstract String getDevelopmentPlatform();

            public abstract String getDevelopmentPlatformVersion();

            public abstract String getDisplayVersion();

            public abstract String getIdentifier();

            public abstract String getInstallationUuid();

            public abstract Organization getOrganization();

            public abstract String getVersion();

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_Application.Builder();
            }
        }

        @AutoValue
        /* loaded from: classes3.dex */
        public static abstract class OperatingSystem {

            @AutoValue.Builder
            /* loaded from: classes3.dex */
            public static abstract class Builder {
                public abstract OperatingSystem build();

                public abstract Builder setBuildVersion(String str);

                public abstract Builder setJailbroken(boolean z);

                public abstract Builder setPlatform(int i);

                public abstract Builder setVersion(String str);
            }

            public abstract String getBuildVersion();

            public abstract int getPlatform();

            public abstract String getVersion();

            public abstract boolean isJailbroken();

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_OperatingSystem.Builder();
            }
        }

        @AutoValue
        /* loaded from: classes3.dex */
        public static abstract class Device {

            @AutoValue.Builder
            /* loaded from: classes3.dex */
            public static abstract class Builder {
                public abstract Device build();

                public abstract Builder setArch(int i);

                public abstract Builder setCores(int i);

                public abstract Builder setDiskSpace(long j);

                public abstract Builder setManufacturer(String str);

                public abstract Builder setModel(String str);

                public abstract Builder setModelClass(String str);

                public abstract Builder setRam(long j);

                public abstract Builder setSimulator(boolean z);

                public abstract Builder setState(int i);
            }

            public abstract int getArch();

            public abstract int getCores();

            public abstract long getDiskSpace();

            public abstract String getManufacturer();

            public abstract String getModel();

            public abstract String getModelClass();

            public abstract long getRam();

            public abstract int getState();

            public abstract boolean isSimulator();

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_Device.Builder();
            }
        }

        @AutoValue
        /* loaded from: classes3.dex */
        public static abstract class Event {

            @AutoValue.Builder
            /* loaded from: classes3.dex */
            public static abstract class Builder {
                public abstract Event build();

                public abstract Builder setApp(Application application);

                public abstract Builder setDevice(Device device);

                public abstract Builder setLog(Log log);

                public abstract Builder setTimestamp(long j);

                public abstract Builder setType(String str);
            }

            public abstract Application getApp();

            public abstract Device getDevice();

            public abstract Log getLog();

            public abstract long getTimestamp();

            public abstract String getType();

            public abstract Builder toBuilder();

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_Event.Builder();
            }

            @AutoValue
            /* loaded from: classes3.dex */
            public static abstract class Application {

                @AutoValue.Builder
                /* loaded from: classes3.dex */
                public static abstract class Builder {
                    public abstract Application build();

                    public abstract Builder setBackground(Boolean bool);

                    public abstract Builder setCustomAttributes(ImmutableList<CustomAttribute> immutableList);

                    public abstract Builder setExecution(Execution execution);

                    public abstract Builder setInternalKeys(ImmutableList<CustomAttribute> immutableList);

                    public abstract Builder setUiOrientation(int i);
                }

                public abstract Boolean getBackground();

                public abstract ImmutableList<CustomAttribute> getCustomAttributes();

                public abstract Execution getExecution();

                public abstract ImmutableList<CustomAttribute> getInternalKeys();

                public abstract int getUiOrientation();

                public abstract Builder toBuilder();

                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Application.Builder();
                }

                @AutoValue
                /* loaded from: classes3.dex */
                public static abstract class Execution {

                    @AutoValue.Builder
                    /* loaded from: classes3.dex */
                    public static abstract class Builder {
                        public abstract Execution build();

                        public abstract Builder setAppExitInfo(ApplicationExitInfo applicationExitInfo);

                        public abstract Builder setBinaries(ImmutableList<BinaryImage> immutableList);

                        public abstract Builder setException(Exception exception);

                        public abstract Builder setSignal(Signal signal);

                        public abstract Builder setThreads(ImmutableList<Thread> immutableList);
                    }

                    public abstract ApplicationExitInfo getAppExitInfo();

                    public abstract ImmutableList<BinaryImage> getBinaries();

                    public abstract Exception getException();

                    public abstract Signal getSignal();

                    public abstract ImmutableList<Thread> getThreads();

                    public static Builder builder() {
                        return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution.Builder();
                    }

                    @AutoValue
                    /* loaded from: classes3.dex */
                    public static abstract class Thread {

                        @AutoValue.Builder
                        /* loaded from: classes3.dex */
                        public static abstract class Builder {
                            public abstract Thread build();

                            public abstract Builder setFrames(ImmutableList<Frame> immutableList);

                            public abstract Builder setImportance(int i);

                            public abstract Builder setName(String str);
                        }

                        public abstract ImmutableList<Frame> getFrames();

                        public abstract int getImportance();

                        public abstract String getName();

                        public static Builder builder() {
                            return new C0984x7e3e3ebd.Builder();
                        }

                        @AutoValue
                        /* loaded from: classes3.dex */
                        public static abstract class Frame {

                            @AutoValue.Builder
                            /* loaded from: classes3.dex */
                            public static abstract class Builder {
                                public abstract Frame build();

                                public abstract Builder setFile(String str);

                                public abstract Builder setImportance(int i);

                                public abstract Builder setOffset(long j);

                                public abstract Builder setPc(long j);

                                public abstract Builder setSymbol(String str);
                            }

                            public abstract String getFile();

                            public abstract int getImportance();

                            public abstract long getOffset();

                            public abstract long getPc();

                            public abstract String getSymbol();

                            public static Builder builder() {
                                return new C0986xce3d994b.Builder();
                            }
                        }
                    }

                    @AutoValue
                    /* loaded from: classes3.dex */
                    public static abstract class Exception {

                        @AutoValue.Builder
                        /* loaded from: classes3.dex */
                        public static abstract class Builder {
                            public abstract Exception build();

                            public abstract Builder setCausedBy(Exception exception);

                            public abstract Builder setFrames(ImmutableList<Thread.Frame> immutableList);

                            public abstract Builder setOverflowCount(int i);

                            public abstract Builder setReason(String str);

                            public abstract Builder setType(String str);
                        }

                        public abstract Exception getCausedBy();

                        public abstract ImmutableList<Thread.Frame> getFrames();

                        public abstract int getOverflowCount();

                        public abstract String getReason();

                        public abstract String getType();

                        public static Builder builder() {
                            return new C0980xc2f5febc.Builder();
                        }
                    }

                    @AutoValue
                    /* loaded from: classes3.dex */
                    public static abstract class Signal {

                        @AutoValue.Builder
                        /* loaded from: classes3.dex */
                        public static abstract class Builder {
                            public abstract Signal build();

                            public abstract Builder setAddress(long j);

                            public abstract Builder setCode(String str);

                            public abstract Builder setName(String str);
                        }

                        public abstract long getAddress();

                        public abstract String getCode();

                        public abstract String getName();

                        public static Builder builder() {
                            return new C0982x7c929f5b.Builder();
                        }
                    }

                    @AutoValue
                    /* loaded from: classes3.dex */
                    public static abstract class BinaryImage {
                        public abstract long getBaseAddress();

                        public abstract String getName();

                        public abstract long getSize();

                        public abstract String getUuid();

                        public static Builder builder() {
                            return new C0978xfe724d07.Builder();
                        }

                        public byte[] getUuidUtf8Bytes() {
                            String uuid = getUuid();
                            if (uuid != null) {
                                return uuid.getBytes(CrashlyticsReport.UTF_8);
                            }
                            return null;
                        }

                        @AutoValue.Builder
                        /* loaded from: classes3.dex */
                        public static abstract class Builder {
                            public abstract BinaryImage build();

                            public abstract Builder setBaseAddress(long j);

                            public abstract Builder setName(String str);

                            public abstract Builder setSize(long j);

                            public abstract Builder setUuid(String str);

                            public Builder setUuidFromUtf8Bytes(byte[] bArr) {
                                return setUuid(new String(bArr, CrashlyticsReport.UTF_8));
                            }
                        }
                    }
                }
            }

            @AutoValue
            /* loaded from: classes3.dex */
            public static abstract class Device {

                @AutoValue.Builder
                /* loaded from: classes3.dex */
                public static abstract class Builder {
                    public abstract Device build();

                    public abstract Builder setBatteryLevel(Double d);

                    public abstract Builder setBatteryVelocity(int i);

                    public abstract Builder setDiskUsed(long j);

                    public abstract Builder setOrientation(int i);

                    public abstract Builder setProximityOn(boolean z);

                    public abstract Builder setRamUsed(long j);
                }

                public abstract Double getBatteryLevel();

                public abstract int getBatteryVelocity();

                public abstract long getDiskUsed();

                public abstract int getOrientation();

                public abstract long getRamUsed();

                public abstract boolean isProximityOn();

                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Device.Builder();
                }
            }

            @AutoValue
            /* loaded from: classes3.dex */
            public static abstract class Log {

                @AutoValue.Builder
                /* loaded from: classes3.dex */
                public static abstract class Builder {
                    public abstract Log build();

                    public abstract Builder setContent(String str);
                }

                public abstract String getContent();

                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Log.Builder();
                }
            }
        }
    }

    @AutoValue
    /* loaded from: classes3.dex */
    public static abstract class ApplicationExitInfo {

        @AutoValue.Builder
        /* loaded from: classes3.dex */
        public static abstract class Builder {
            public abstract ApplicationExitInfo build();

            public abstract Builder setImportance(int i);

            public abstract Builder setPid(int i);

            public abstract Builder setProcessName(String str);

            public abstract Builder setPss(long j);

            public abstract Builder setReasonCode(int i);

            public abstract Builder setRss(long j);

            public abstract Builder setTimestamp(long j);

            public abstract Builder setTraceFile(String str);
        }

        public abstract int getImportance();

        public abstract int getPid();

        public abstract String getProcessName();

        public abstract long getPss();

        public abstract int getReasonCode();

        public abstract long getRss();

        public abstract long getTimestamp();

        public abstract String getTraceFile();

        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_ApplicationExitInfo.Builder();
        }
    }
}
