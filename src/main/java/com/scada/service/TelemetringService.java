package com.scada.service;

import java.util.List;








import com.scada.domain.Pulse;
import com.scada.domain.Telemetring;

public interface TelemetringService {
	public void saveTelemetring(Telemetring telemetring);
	
	public List<Telemetring> getAll();
	
	public List<Telemetring> getTelemetringByStation(String station);

	List<Telemetring> getTelemetringByState(String station, String state);

	public Object getTelemetringById(int id);

	public void updateTelemetring(Telemetring telemetring);
}