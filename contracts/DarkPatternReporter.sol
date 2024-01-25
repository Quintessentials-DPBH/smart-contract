// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract DarkPatternReporter {
    struct Report {
        address reporter;
        string url;
        uint256 timestamp;
    }

    Report[] public reports;

    function reportSite(string memory _url) public {
        reports.push(Report(msg.sender, _url, block.timestamp));
    }

    function getReportCount() public view returns (uint256) {
        return reports.length;
    }

    function getReport(uint256 index) public view returns (address, string memory, uint256) {
        require(index < reports.length, "Report does not exist.");
        Report memory report = reports[index];
        return (report.reporter, report.url, report.timestamp);
    }
}